#!/bin/bash

set -euo pipefail

if [[ -t 1 ]]; then
	RED="$(tput setaf 1)"
	GREEN="$(tput setaf 2)"
	YELLOW="$(tput setaf 3)"
	BLUE="$(tput setaf 4)"
	BOLD="$(tput bold)"
	RESET="$(tput sgr0)"
	USE_TTY=1
else
	RED=""
	GREEN=""
	YELLOW=""
	BLUE=""
	BOLD=""
	RESET=""
	USE_TTY=0
fi

if [[ -r /dev/tty ]]; then
	HAS_TTY_INPUT=1
else
	HAS_TTY_INPUT=0
fi

WORKING_DIR="$(mktemp -d /tmp/starlabs-fwup.XXXXXX)"
trap 'rm -rf "$WORKING_DIR"' EXIT
SCRIPT_SOURCE="$0"
SCRIPT_FROM_STDIN=0
if [[ "$SCRIPT_SOURCE" == "bash" || "$SCRIPT_SOURCE" == "-bash" ]]; then
	SCRIPT_DIR="$PWD"
	SCRIPT_FROM_STDIN=1
else
	SCRIPT_DIR="$(cd "$(dirname "$SCRIPT_SOURCE")" && pwd)"
fi

COREBOOT_TARGET_VERSION="26.06"

firmware_raw_branch()
{
	local branch=""

	if [[ -n "${STARLABS_FIRMWARE_BRANCH:-}" ]]; then
		printf "%s\n" "$STARLABS_FIRMWARE_BRANCH"
		return 0
	fi

	if [[ "$SCRIPT_FROM_STDIN" != "1" ]] && command -v git >/dev/null 2>&1; then
		branch="$(git -C "$SCRIPT_DIR" symbolic-ref --quiet --short HEAD 2>/dev/null || true)"
		if [[ -n "$branch" ]]; then
			printf "%s\n" "$branch"
			return 0
		fi
	fi

	printf "%s\n" "$COREBOOT_TARGET_VERSION"
}

firmware_raw_repo()
{
	local branch="$1"
	local base="${STARLABS_FIRMWARE_RAW_BASE:-https://raw.githubusercontent.com/StarLabsLtd/firmware}"

	if [[ -n "${STARLABS_FIRMWARE_REPO:-}" ]]; then
		printf "%s\n" "${STARLABS_FIRMWARE_REPO%/}"
		return 0
	fi

	case "$branch" in
	refs/*)
		printf "%s/%s\n" "${base%/}" "$branch"
		;;
	*)
		printf "%s/refs/heads/%s\n" "${base%/}" "$branch"
		;;
	esac
}

FIRMWARE_BRANCH="$(firmware_raw_branch)"
REPO="$(firmware_raw_repo "$FIRMWARE_BRANCH")"
RAW_SKU="$(cat /sys/class/dmi/id/product_sku)"
case "$RAW_SKU" in
I5-MXC|I5-SB)
	SKU="I5"
	;;
*)
	SKU="$RAW_SKU"
	;;
esac
BIOS_VERSION="$(cat /sys/class/dmi/id/bios_version 2>/dev/null || true)"
BIOS_VENDOR="$(cat /sys/class/dmi/id/bios_vendor 2>/dev/null || true)"

declare -a TASK_KEYS=()
declare -A TASK_LABELS=()
declare -A TASK_STATUS=()
declare -A TASK_DETAIL=()
declare -A TASK_WANTED=()

STARLITE_KEYBOARD_PRESENT=0
STARFIGHTER_CAMERA_PRESENT=0
STARFIGHTER_CAMERA_NODE=""
STARFIGHTER_CAMERA_PID=""
STARFIGHTER_TRACKPAD_NODE=""
STARLITE_TOUCHSCREEN_NODE=""
LEXAR_PRESENT=0
PENDING_UPDATES=0
SUDO_READY=0
FLASHROM_PROBE_OUTPUT=""
ALLOW_UNTESTED_COREBOOT=0
REINSTALL=0
COREBOOT_SWITCH=0
SET_MIRROR_FLAG=0
CAMERA_ONLY=0
HAS_BATTERY=0

CAMERA_TARGET_VERSION="HYGD-240907-A"
CAMERA_UPDATES_ENABLED=1
TRACKPAD_TARGET_VERSION="8197"
TRACKPAD_TARGET_VERSION_HEX="2005"
COREBOOT_ALLOWED_SKUS=(
	F2
	F1
	HZ
	I3
	I5
	L4
	B7-U
	B7-N
	B62-I
	B6-I
	B5
	Y1
	Y3
	Y2
)
COREBOOT_SWITCH_ALLOWED_SKUS=(
)

usage()
{
	cat <<EOF
Usage: $0 [--camera-only] [--reinstall] [--coreboot-switch] [--set-mirror-flag] [--help]

  --camera-only                 Only check and update the StarFighter camera.
  --reinstall                   Reinstall firmware even when the target version
                                already matches the installed version.
  --coreboot-switch             Switch supported systems from AMI ${COREBOOT_TARGET_VERSION} to the
                                beta coreboot ROM.
  --set-mirror-flag             Set the EC mirror flag and shut the system down.
  --help                        Show this help text.
EOF
}

parse_args()
{
	while [[ $# -gt 0 ]]; do
		case "$1" in
		--i-have-a-programmer)
			ALLOW_UNTESTED_COREBOOT=1
			;;
		--reinstall)
			REINSTALL=1
			;;
		--camera-only)
			CAMERA_ONLY=1
			;;
		--coreboot-switch)
			COREBOOT_SWITCH=1
			;;
		--set-mirror-flag)
			SET_MIRROR_FLAG=1
			;;
		--help|-h)
			usage
			exit 0
			;;
		*)
			printf "%sUnknown option:%s %s\n" "$RED" "$RESET" "$1" >&2
			usage >&2
			exit 1
			;;
		esac
		shift
	done

	if (( CAMERA_ONLY == 1 )) && (( COREBOOT_SWITCH == 1 || SET_MIRROR_FLAG == 1 )); then
		printf "%s--camera-only cannot be combined with coreboot or mirror-flag actions.%s\n" \
			"$RED" "$RESET" >&2
		usage >&2
		exit 1
	fi
}

status_color()
{
	case "$1" in
	pending) printf "%s" "$BLUE" ;;
	checking|waiting|updating) printf "%s" "$YELLOW" ;;
	done|up-to-date) printf "%s" "$GREEN" ;;
	skipped|not-applicable) printf "%s" "$BLUE" ;;
	failed) printf "%s" "$RED" ;;
	*) printf "%s" "$RESET" ;;
	esac
}

status_text()
{
	case "$1" in
	pending) printf "PENDING" ;;
	checking) printf "CHECKING" ;;
	waiting) printf "WAITING" ;;
	updating) printf "UPDATING" ;;
	done) printf "DONE" ;;
	up-to-date) printf "UP-TO-DATE" ;;
	skipped) printf "SKIPPED" ;;
	not-applicable) printf "N/A" ;;
	failed) printf "FAILED" ;;
	*) printf "%s" "$1" ;;
	esac
}

render_tasks()
{
	local key color text

	if (( USE_TTY )); then
		printf '\033[H\033[J'
	fi

	printf "%sStar Labs Firmware Updater%s\n\n" "$BOLD" "$RESET"
	printf "System: %s%s%s\n" "$BOLD" "$RAW_SKU" "$RESET"
	if [[ -n "$BIOS_VERSION" ]]; then
		printf "BIOS:   %s\n" "$BIOS_VERSION"
	fi
	printf "\n"

	for key in "${TASK_KEYS[@]}"; do
		color="$(status_color "${TASK_STATUS[$key]}")"
		text="$(status_text "${TASK_STATUS[$key]}")"
		printf "%s[%-10s]%s %s" "$color" "$text" "$RESET" "${TASK_LABELS[$key]}"
		if [[ -n "${TASK_DETAIL[$key]:-}" ]]; then
			printf " %s(%s)%s" "$BLUE" "${TASK_DETAIL[$key]}" "$RESET"
		fi
		printf "\n"
	done
}

add_task()
{
	local key="$1"
	local label="$2"
	local status="${3:-pending}"
	local detail="${4:-}"

	TASK_KEYS+=("$key")
	TASK_LABELS["$key"]="$label"
	TASK_STATUS["$key"]="$status"
	TASK_DETAIL["$key"]="$detail"
	TASK_WANTED["$key"]=0
}

set_task()
{
	local key="$1"
	local status="$2"
	local detail="${3:-}"

	TASK_STATUS["$key"]="$status"
	TASK_DETAIL["$key"]="$detail"
	render_tasks
}

mark_task_wanted()
{
	local key="$1"

	TASK_WANTED["$key"]=1
	PENDING_UPDATES=1
}

task_is_wanted()
{
	[[ "${TASK_WANTED[$1]:-0}" == "1" ]]
}

trackpad_version_matches_target()
{
	local version="$1"

	[[ -n "$version" ]] || return 1
	[[ "$version" == "$TRACKPAD_TARGET_VERSION" || "${version^^}" == "${TRACKPAD_TARGET_VERSION_HEX^^}" ]]
}

note_relpath_for_task()
{
	case "$1" in
	touchscreen) printf "notes/touchscreen/starlite-mkv.txt" ;;
	keyboard) printf "notes/keyboard/starlite-mkv.txt" ;;
	trackpad) printf "notes/trackpad/starfighter.txt" ;;
	camera) printf "notes/camera/starfighter.txt" ;;
	ssd) printf "notes/ssd/lexar-nm620.txt" ;;
	coreboot) printf "%s-release-notes.md" "$COREBOOT_TARGET_VERSION" ;;
	*) return 1 ;;
	esac
}

coreboot_allowed_sku()
{
	local allowed

	if (( ALLOW_UNTESTED_COREBOOT == 1 )); then
		return 0
	fi

	for allowed in "${COREBOOT_ALLOWED_SKUS[@]}"; do
		[[ "$SKU" == "$allowed" ]] && return 0
	done

	return 1
}

coreboot_switch_allowed_sku()
{
	local allowed

	for allowed in "${COREBOOT_SWITCH_ALLOWED_SKUS[@]}"; do
		[[ "$SKU" == "$allowed" ]] && return 0
	done

	return 1
}

coreboot_rom_relpath()
{
	if (( COREBOOT_SWITCH == 1 )); then
		printf "roms/%s.coreboot.bios\n" "$SKU"
	else
		printf "roms/%s.bios\n" "$SKU"
	fi
}

system_has_battery()
{
	local node

	for node in /sys/class/power_supply/BAT*; do
		[[ -e "$node" ]] || continue
		return 0
	done

	if command -v upower >/dev/null 2>&1; then
		upower -e 2>/dev/null | grep -q '/battery_'
		return
	fi

	return 1
}

batteryless_sku()
{
	case "$SKU" in
	Y1|Y2|Y3)
		return 0
		;;
	*)
		return 1
		;;
	esac
}

starfighter_sku()
{
	[[ "$RAW_SKU" == "F1" || "$RAW_SKU" == "F1-A" || "$RAW_SKU" == "F2" ]]
}

init_power_state()
{
	if batteryless_sku; then
		HAS_BATTERY=0
		return
	fi

	if system_has_battery; then
		HAS_BATTERY=1
	else
		HAS_BATTERY=0
	fi
}

power_checks_required()
{
	local key

	for key in touchscreen keyboard trackpad camera ssd coreboot; do
		if task_is_wanted "$key"; then
			return 0
		fi
	done

	return 1
}

ansi_strip()
{
	sed -r 's/\x1B\[([0-9]{1,3}(;[0-9]{1,3})?)?[mGK]//g'
}

download_to()
{
	local relpath="$1"
	local dest="$2"
	local url="${REPO}/${relpath}"

	mkdir -p "$(dirname "$dest")"

	if [[ -s "$dest" ]]; then
		return 0
	fi

	if command -v wget >/dev/null 2>&1; then
		wget -q "$url" -O "$dest"
	elif command -v curl >/dev/null 2>&1; then
		curl -fsSL "$url" -o "$dest"
	else
		echo "Missing wget/curl; cannot download $relpath" >&2
		return 1
	fi
}

ensure_binary()
{
	local name="$1"
	local path="${WORKING_DIR}/${name}"

	download_to "binaries/${name}" "$path"
	chmod +x "$path"
	printf "%s\n" "$path"
}

ensure_note()
{
	local relpath="$1"
	local local_path="${SCRIPT_DIR}/${relpath}"
	local path="${WORKING_DIR}/${relpath}"

	if [[ -r "$local_path" ]]; then
		printf "%s\n" "$local_path"
		return 0
	fi

	download_to "$relpath" "$path"
	printf "%s\n" "$path"
}

ensure_sudo()
{
	if (( SUDO_READY == 1 )); then
		return 0
	fi

	if (( USE_TTY )); then
		printf "\n%sSudo access is required for firmware checks and updates.%s\n" "$YELLOW" "$RESET" >&2
		if sudo -v; then
			SUDO_READY=1
			return 0
		fi
	else
		if sudo -n true >/dev/null 2>&1; then
			SUDO_READY=1
			return 0
		fi
	fi

	return 1
}

wait_for_charger()
{
	if (( HAS_BATTERY == 0 )); then
		return 0
	fi

	while upower -i /org/freedesktop/UPower/devices/battery_BAT0 2>/dev/null | grep -q "state:\\s*discharging"; do
		printf "%sPlease connect the charger...%s\n" "$YELLOW" "$RESET"
		sleep 10
	done
}

version_ge()
{
	[[ "$(printf '%s\n%s\n' "$2" "$1" | sort -V | head -n1)" == "$2" ]]
}

firmware_setup_path()
{
	if [[ -n "$BIOS_VERSION" ]] && version_ge "$BIOS_VERSION" "26.02"; then
		printf "Settings -> Security"
	else
		printf "Platform Setup Menu"
	fi
}

offer_reboot_to_firmware_setup()
{
	local reply

	if (( ! USE_TTY || ! HAS_TTY_INPUT )); then
		return 1
	fi

	printf "\n%sReboot into firmware setup now?%s [Y/n] " "$YELLOW" "$RESET"
	read -r reply </dev/tty || true
	if [[ -z "$reply" || "$reply" =~ ^[Yy]$ ]]; then
		sudo systemctl reboot --firmware-setup
		exit 1
	fi
	return 1
}

prompt_shutdown_after_coreboot_update()
{
	printf "\n%sFirmware update complete.%s\n" "$GREEN" "$RESET"
	printf "To finish the update safely, shut the system down, disconnect the charger, and wait about 12 seconds until the LEDs flicker.\n"
	printf "Shutting down automatically in 8 seconds.\n"
	sleep 8
	return 0
}

print_coreboot_setup_instructions()
{
	local path

	path="$(firmware_setup_path)"
	printf "\n%sFirmware setup change required.%s\n" "$RED" "$RESET" >&2
	printf "Open %s and disable the required option, then boot Linux and re-run this updater.\n" "$path" >&2
}

battery_capacity()
{
	local node

	for node in /sys/class/power_supply/BAT*/capacity; do
		[[ -r "$node" ]] || continue
		cat "$node"
		return 0
	done

	upower -i /org/freedesktop/UPower/devices/battery_BAT0 2>/dev/null | awk '/percentage:/ {gsub(/%/, "", $2); print $2; exit}'
}

charger_connected()
{
	local node

	for node in /sys/class/power_supply/AC*/online /sys/class/power_supply/ADP*/online; do
		[[ -r "$node" ]] || continue
		[[ "$(cat "$node")" == "1" ]] && return 0
	done

	upower -i /org/freedesktop/UPower/devices/battery_BAT0 2>/dev/null | grep -Eq 'state:\s*(charging|fully-charged)'
}

secure_boot_enabled()
{
	if command -v mokutil >/dev/null 2>&1; then
		mokutil --sb-state 2>/dev/null | grep -q "SecureBoot enabled"
		return
	fi

	python3 - <<'PY'
from pathlib import Path
for p in Path('/sys/firmware/efi/efivars').glob('SecureBoot-*'):
    data = p.read_bytes()
    raise SystemExit(0 if data[-1] == 1 else 1)
raise SystemExit(1)
PY
}

os_release_id()
{
	if [[ -r /etc/os-release ]]; then
		. /etc/os-release
		printf "%s\n" "${ID:-}"
		return 0
	fi
	return 1
}

os_release_like()
{
	if [[ -r /etc/os-release ]]; then
		. /etc/os-release
		printf "%s\n" "${ID_LIKE:-}"
		return 0
	fi
	return 1
}

print_iomem_relaxed_instructions()
{
	local os_id os_like

	os_id="$(os_release_id || true)"
	os_like="$(os_release_like || true)"

	case " ${os_id} ${os_like} " in
	*" ubuntu "*|*" debian "*|*" linuxmint "*|*" pop "*)
		printf "Ubuntu/Debian: run:\n" >&2
		printf '%s\n' "  sudo sed -i 's/^\(GRUB_CMDLINE_LINUX_DEFAULT=\"[^\"]*\)\"/\1 iomem=relaxed\"/' /etc/default/grub" >&2
		printf "  sudo update-grub\n" >&2
		printf "  reboot\n" >&2
		;;
	*" fedora "*)
		printf "Fedora: run:\n" >&2
		printf "  sudo grubby --update-kernel=ALL --no-etc-grub-update --args=\"iomem=relaxed\"\n" >&2
		printf "  reboot\n" >&2
		;;
	*" arch "*|*" endeavouros "*|*" manjaro "*)
		printf "Arch: run:\n" >&2
		printf '%s\n' "  sudo sed -i 's/^\(GRUB_CMDLINE_LINUX_DEFAULT=\"[^\"]*\)\"/\1 iomem=relaxed\"/' /etc/default/grub" >&2
		printf "  sudo grub-mkconfig -o /boot/grub/grub.cfg\n" >&2
		printf "  reboot\n" >&2
		;;
	*)
		printf "Add %siomem=relaxed%s to your kernel command line, reboot, and re-run this updater.\n" "$BOLD" "$RESET" >&2
		;;
	esac
}

bios_lock_state()
{
	local output

	output="$(get_flashrom_probe_output || true)"
	[[ -n "$output" ]] || return 1

	if [[ "$output" == *"SMM protection is enabled"* ]]; then
		printf "SMM_BWP enabled\n"
		return 0
	fi

	printf "SMM_BWP disabled\n"
	return 0
}

flashrom_access_check()
{
	local tool="$1"
	local output rc

	ensure_sudo || return 1

	set +e
	output="$(sudo "$tool" -p internal --flash-name 2>&1)"
	rc=$?
	set -e

	printf "%s" "$output"
	return "$rc"
}

get_flashrom_probe_output()
{
	local tool output

	if [[ -n "$FLASHROM_PROBE_OUTPUT" ]]; then
		printf "%s" "$FLASHROM_PROBE_OUTPUT"
		return 0
	fi

	tool="$(ensure_binary flashrom)"
	ensure_sudo || return 1
	set +e
	output="$(sudo "$tool" -VV -p internal --flash-name 2>&1)"
	set -e
	FLASHROM_PROBE_OUTPUT="$output"
	printf "%s" "$output"
	return 0
}

discover_touchscreen()
{
	if [[ -z "$STARLITE_TOUCHSCREEN_NODE" ]]; then
		set_task touchscreen not-applicable
		return
	fi

	mark_task_wanted touchscreen
	set_task touchscreen pending "version check unavailable"
}

discover_keyboard()
{
	local current_version

	if (( STARLITE_KEYBOARD_PRESENT == 0 )); then
		set_task keyboard skipped "not connected"
		return
	fi

	current_version="$(find_starlite_keyboard_version || true)"
	case "$current_version" in
	1.08|1.09)
		if (( REINSTALL == 1 )); then
			mark_task_wanted keyboard
			set_task keyboard pending "reinstall ${current_version}"
		else
			set_task keyboard up-to-date "$current_version"
		fi
		;;
	1.03|1.05)
		mark_task_wanted keyboard
		set_task keyboard pending "$current_version -> 1.09"
		;;
	1.04|1.06)
		mark_task_wanted keyboard
		set_task keyboard pending "$current_version -> 1.08"
		;;
	*)
		set_task keyboard skipped "unknown version ${current_version:-n/a}"
		;;
	esac
}

discover_trackpad()
{
	local tool current_version

	if [[ -z "$STARFIGHTER_TRACKPAD_NODE" ]]; then
		set_task trackpad not-applicable
		return
	fi

	tool="$(ensure_binary pixtpfwup)"
	if ! ensure_sudo; then
		mark_task_wanted trackpad
		set_task trackpad pending "sudo required"
		return
	fi

	current_version="$(trackpad_current_version "$tool" "$STARFIGHTER_TRACKPAD_NODE" || true)"
	if trackpad_version_matches_target "$current_version"; then
		if (( REINSTALL == 1 )); then
			mark_task_wanted trackpad
			set_task trackpad pending "reinstall ${current_version}"
		else
			set_task trackpad up-to-date "$current_version"
		fi
	else
		mark_task_wanted trackpad
		set_task trackpad pending "${current_version:-version check failed} -> ${TRACKPAD_TARGET_VERSION_HEX}"
	fi
}

discover_camera()
{
	local version

	if ! starfighter_sku; then
		set_task camera skipped "unsupported system"
		return
	fi

	if (( CAMERA_UPDATES_ENABLED == 0 )); then
		set_task camera skipped "disabled"
		return
	fi

	if (( STARFIGHTER_CAMERA_PRESENT == 0 )) || [[ -z "$STARFIGHTER_CAMERA_NODE" ]]; then
		set_task camera skipped "not connected"
		return
	fi

	version="$(find_starfighter_camera_version || true)"
	if [[ "$version" == "$CAMERA_TARGET_VERSION" ]]; then
		if (( REINSTALL == 1 )); then
			mark_task_wanted camera
			set_task camera pending "reinstall ${version}"
		else
			set_task camera up-to-date "$version"
		fi
	else
		mark_task_wanted camera
		set_task camera pending "${version:-unknown} -> ${CAMERA_TARGET_VERSION}"
	fi
}

discover_ssd()
{
	local mn sn fr info rest size code model ssdbin ssdfw currfw_digits

	if ! detect_lexar_nm620; then
		set_task ssd not-applicable
		return
	fi

	ensure_nvme_cli >/dev/null 2>&1 || {
		mark_task_wanted ssd
		set_task ssd pending "nvme-cli needed"
		return
	}

	if ! ensure_sudo; then
		mark_task_wanted ssd
		set_task ssd pending "sudo required"
		return
	fi

	IFS=$'\t' read -r mn sn fr < <(
		sudo nvme id-ctrl /dev/nvme0 2>/dev/null | awk -F':' '
			/^[[:space:]]*mn[[:space:]]*:/ {m=$2}
			/^[[:space:]]*sn[[:space:]]*:/ {s=$2}
			/^[[:space:]]*fr[[:space:]]*:/ {f=$2}
			END {
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", m)
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", s)
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", f)
				s = substr(s, length(s)-4)
				printf "%s\t%s\t%s\n", m, s, f
			}'
	)

	info="$mn $sn"
	rest="$(echo "$info" | sed 's/.*Lexar SSD NM620[[:space:]]*//')"
	size="${rest%% *}"
	code="${rest##* }"
	model="${code}/${size}"
	ssdbin=""
	ssdfw=""

	case "$model" in
	"P1103/1TB") ssdbin="KC2RCADC.bin"; ssdfw="16391" ;;
	"P1103/512GB") ssdbin="KC2RCALC.bin"; ssdfw="16391" ;;
	"P110W/2TB") ssdbin="ATH1CA2C.bin"; ssdfw="16422" ;;
	"P110W/1TB") ssdbin="ATH1CALC.bin"; ssdfw="16422" ;;
	"P110W/512GB") ssdbin="ATH1CADC.bin"; ssdfw="16422" ;;
	"P111D/2TB") ssdbin="YIQZCB2C.bin"; ssdfw="13767" ;;
	"P1125/2TB") ssdbin="OOD4CA4C.bin"; ssdfw="32900" ;;
	"P112W/512GB") ssdbin="ATH1CADC.bin"; ssdfw="16263" ;;
	"P1157/1TB") ssdbin="KCA1AA4C.bin"; ssdfw="28241" ;;
	"P113V/1TB") ssdbin="UK3SCELC.bin"; ssdfw="13294" ;;
	"P113V/2TB") ssdbin="UK3SCE2C.bin"; ssdfw="13294" ;;
	*)
		set_task ssd skipped "unknown ${model}"
		return
		;;
	esac

	currfw_digits="$(echo "${fr:-}" | tr -cd '0-9' | sed 's/^0*//')"
	if [[ -n "$currfw_digits" && "$currfw_digits" == "$ssdfw" ]]; then
		if (( REINSTALL == 1 )); then
			mark_task_wanted ssd
			set_task ssd pending "reinstall ${currfw_digits}"
		else
			set_task ssd up-to-date "$currfw_digits"
		fi
	else
		mark_task_wanted ssd
		set_task ssd pending "${currfw_digits:-unknown} -> ${ssdfw}"
	fi
}

discover_coreboot()
{
	if ! coreboot_allowed_sku; then
		set_task coreboot skipped "not enabled for ${RAW_SKU}"
		return
	fi

	if (( COREBOOT_SWITCH == 1 )); then
		if ! coreboot_switch_allowed_sku; then
			set_task coreboot skipped "switch not enabled for ${RAW_SKU}"
			return
		fi

		if [[ "$BIOS_VENDOR" == "American Megatrends International, LLC." &&
		      "$BIOS_VERSION" == "$COREBOOT_TARGET_VERSION" ]]; then
			mark_task_wanted coreboot
			set_task coreboot pending "AMI ${BIOS_VERSION} -> coreboot ${COREBOOT_TARGET_VERSION}"
		elif [[ "$BIOS_VENDOR" == "coreboot" &&
		        "$BIOS_VERSION" == "$COREBOOT_TARGET_VERSION" ]]; then
			set_task coreboot up-to-date "$BIOS_VERSION"
		elif [[ "$BIOS_VENDOR" == "American Megatrends International, LLC." ]]; then
			set_task coreboot skipped "update AMI to ${COREBOOT_TARGET_VERSION} first"
		else
			set_task coreboot skipped "requires AMI ${COREBOOT_TARGET_VERSION}"
		fi
		return
	fi

	if [[ "$BIOS_VERSION" == "$COREBOOT_TARGET_VERSION" ]]; then
		if (( REINSTALL == 1 )); then
			mark_task_wanted coreboot
			set_task coreboot pending "reinstall ${BIOS_VERSION}"
		else
			set_task coreboot up-to-date "$BIOS_VERSION"
		fi
	else
		mark_task_wanted coreboot
		set_task coreboot pending "${BIOS_VERSION:-unknown} -> ${COREBOOT_TARGET_VERSION}"
	fi
}

discover_mirror_flag()
{
	mark_task_wanted mirror-flag
	set_task mirror-flag pending "requested"
}

discover_updates()
{
	for key in "${TASK_KEYS[@]}"; do
		set_task "$key" checking
		case "$key" in
		touchscreen) discover_touchscreen ;;
		keyboard) discover_keyboard ;;
		trackpad) discover_trackpad ;;
		camera) discover_camera ;;
		ssd) discover_ssd ;;
		coreboot) discover_coreboot ;;
		mirror-flag) discover_mirror_flag ;;
		esac
	done
}

show_release_notes()
{
	local key relpath note shown=0

	for key in "${TASK_KEYS[@]}"; do
		if ! task_is_wanted "$key"; then
			continue
		fi

		relpath="$(note_relpath_for_task "$key" || true)"
		[[ -n "$relpath" ]] || continue
		note="$(ensure_note "$relpath" 2>/dev/null || true)"
		[[ -n "$note" && -r "$note" ]] || continue

		if (( shown == 0 )); then
			printf "\n%sRelease Notes%s\n" "$BOLD" "$RESET"
			shown=1
		fi

		printf "\n%s%s%s" "$BOLD" "${TASK_LABELS[$key]}" "$RESET"
		if [[ -n "${TASK_DETAIL[$key]:-}" ]]; then
			printf " %s(%s)%s" "$BLUE" "${TASK_DETAIL[$key]}" "$RESET"
		fi
		printf "\n"
		sed 's/^/  /' "$note"
	done
}

add_prerequisite_tasks()
{
	if (( PENDING_UPDATES == 0 )); then
		return
	fi

	if power_checks_required; then
		if (( HAS_BATTERY == 1 )); then
			add_task prereq-ac "Charger connected"
			add_task prereq-battery "Battery at least 30%"
		else
			add_task prereq-ac "Charger connected" not-applicable "no battery detected"
			add_task prereq-battery "Battery at least 30%" not-applicable "no battery detected"
		fi
	fi

	if task_is_wanted coreboot; then
		add_task prereq-bios-lock "BIOS Lock disabled"
		add_task prereq-secure-boot "Secure Boot disabled"
		add_task prereq-flashrom "Flashrom access"
	fi
}

check_charger_task()
{
	set_task prereq-ac checking
	if charger_connected; then
		set_task prereq-ac done
	else
		set_task prereq-ac failed "connect AC power"
		return 1
	fi
}

check_battery_task()
{
	local pct

	set_task prereq-battery checking
	pct="$(battery_capacity || true)"
	if [[ -z "$pct" ]]; then
		set_task prereq-battery failed "battery status unavailable"
		return 1
	fi
	if (( pct >= 30 )); then
		set_task prereq-battery done "${pct}%"
	else
		set_task prereq-battery failed "${pct}%"
		return 1
	fi
}

check_bios_lock_task()
{
	local state path

	set_task prereq-bios-lock checking
	state="$(bios_lock_state || true)"
	case "$state" in
	"SMM_BWP disabled")
		set_task prereq-bios-lock done "$state"
		return 0
		;;
	"SMM_BWP enabled")
		set_task prereq-bios-lock failed "$state"
		path="$(firmware_setup_path)"
		printf "\n%sBIOS SMM write protection is enabled.%s\n" "$RED" "$RESET" >&2
		printf "Open %s and disable BIOS Lock, then boot Linux and re-run this updater.\n" "$path" >&2
		offer_reboot_to_firmware_setup || true
		return 1
		;;
	*)
		if [[ "$FLASHROM_PROBE_OUTPUT" == *"/dev/mem"* || "$FLASHROM_PROBE_OUTPUT" == *"iomem"* || "$FLASHROM_PROBE_OUTPUT" == *"Operation not permitted"* || "$FLASHROM_PROBE_OUTPUT" == *"Permission denied"* ]]; then
			set_task prereq-bios-lock failed "kernel blocked flashrom"
			printf "\n%sUnable to check BIOS Lock because flashrom is blocked by the running kernel.%s\n" "$RED" "$RESET" >&2
			print_iomem_relaxed_instructions
			return 1
		fi
		set_task prereq-bios-lock failed "unable to determine"
		return 1
		;;
	esac
}

check_secure_boot_task()
{
	local path

	set_task prereq-secure-boot checking
	if secure_boot_enabled; then
		set_task prereq-secure-boot failed "enabled"
		path="$(firmware_setup_path)"
		printf "\n%sSecure Boot is enabled.%s\n" "$RED" "$RESET" >&2
		printf "Open %s, disable Secure Boot, then boot Linux and re-run this updater.\n" "$path" >&2
		offer_reboot_to_firmware_setup || true
		return 1
	fi

	set_task prereq-secure-boot done
}

check_flashrom_task()
{
	local tool output rc

	set_task prereq-flashrom checking
	tool="$(ensure_binary flashrom)"
	set +e
	output="$(flashrom_access_check "$tool")"
	rc=$?
	set -e
	if (( rc == 0 )); then
		set_task prereq-flashrom done
		return 0
	fi

	if [[ "$output" == *"/dev/mem"* || "$output" == *"iomem"* || "$output" == *"Operation not permitted"* || "$output" == *"Permission denied"* ]]; then
		set_task prereq-flashrom failed "kernel blocked flashrom"
		printf "\n%sFlashrom access is blocked by the running kernel.%s\n" "$RED" "$RESET" >&2
		printf "If Secure Boot is already disabled, enable relaxed iomem access, reboot, and re-run this updater.\n" >&2
		print_iomem_relaxed_instructions
		return 1
	fi

	set_task prereq-flashrom failed "probe failed"
	printf "\n%sFlashrom probe failed.%s\n%s\n" "$RED" "$RESET" "$output" >&2
	return 1
}

run_prerequisite_checks()
{
	if power_checks_required && (( HAS_BATTERY == 1 )); then
		check_charger_task || return 1
		check_battery_task || return 1
	fi

	if task_is_wanted coreboot; then
		check_bios_lock_task || return 1
		check_secure_boot_task || return 1
		check_flashrom_task || return 1
	fi
}

find_starlite_keyboard_version()
{
	lsusb -d 1018:1006 -v 2>/dev/null | awk '/bcdDevice/ { print $2; exit }'
}

has_starlite_keyboard()
{
	[[ -n "$(find_starlite_keyboard_version)" ]]
}

find_starlite_touchscreen_node()
{
	local sys

	for sys in /sys/class/hidraw/hidraw*; do
		[[ -e "$sys/device/modalias" ]] || continue
		grep -qFx "hid:b0018g0004v000027C6p00000111" "$sys/device/modalias" || continue
		printf "/dev/%s\n" "$(basename "$sys")"
		return 0
	done
	return 1
}

find_starfighter_trackpad_node()
{
	local sys modalias

	for sys in /sys/class/hidraw/hidraw*; do
		[[ -e "$sys/device/modalias" ]] || continue
		modalias="$(cat "$sys/device/modalias" 2>/dev/null || true)"
		case "$modalias" in
		*0000093A*p00000274*|*0000093A*p00000279*)
			printf "/dev/%s\n" "$(basename "$sys")"
			return 0
			;;
		esac
	done
	return 1
}

find_starfighter_camera_usb_dir()
{
	local pid product sys vid

	for sys in /sys/bus/usb/devices/*; do
		[[ -f "$sys/idVendor" && -f "$sys/idProduct" ]] || continue
		vid="$(cat "$sys/idVendor" 2>/dev/null || true)"
		pid="$(cat "$sys/idProduct" 2>/dev/null || true)"
		[[ "$vid" == "1bcf" ]] || continue
		product="$(cat "$sys/product" 2>/dev/null || true)"

		if [[ "$pid" == "2ced" && "$product" == "Hy-UXGA(9240)-Camera" ]]; then
			printf "%s\n" "$sys"
			return 0
		fi
		if [[ "$pid" == "0b09" ]]; then
			printf "%s\n" "$sys"
			return 0
		fi
	done
	return 1
}

find_starfighter_camera_pid()
{
	local usbdir

	usbdir="$(find_starfighter_camera_usb_dir)" || return 1
	cat "$usbdir/idProduct" 2>/dev/null || true
}

find_starfighter_camera_node()
{
	local usbdir sys devpath

	usbdir="$(find_starfighter_camera_usb_dir || true)"
	[[ -n "$usbdir" ]] || return 1
	usbdir="$(readlink -f "$usbdir" 2>/dev/null || true)"
	[[ -n "$usbdir" ]] || return 1

	for sys in /sys/class/video4linux/video*; do
		[[ -e "$sys/device" ]] || continue
		devpath="$(readlink -f "$sys/device" 2>/dev/null || true)"
		while [[ -n "$devpath" && "$devpath" != "/" ]]; do
			if [[ "$devpath" == "$usbdir" ]]; then
				printf "/dev/%s\n" "$(basename "$sys")"
				return 0
			fi
			devpath="$(dirname "$devpath")"
		done
	done
	return 1
}

find_starfighter_camera_version()
{
	local usbdir

	usbdir="$(find_starfighter_camera_usb_dir)" || return 1
	cat "$usbdir/manufacturer" 2>/dev/null || true
}

wait_for_optional_device()
{
	local label="$1"
	local detect_fn="$2"
	local timeout="$3"
	local elapsed=0

	printf "%sConnect %s now.%s Waiting up to %ss. Press Enter to skip.\n" \
		"$YELLOW" "$label" "$RESET" "$timeout"

	while (( elapsed < timeout )); do
		if "$detect_fn" >/dev/null 2>&1; then
			return 0
		fi
		if (( USE_TTY && HAS_TTY_INPUT )) && read -r -t 1 _ </dev/tty; then
			return 1
		fi
		sleep 1
		((elapsed+=2))
	done
	return 1
}

ensure_nvme_cli()
{
	if command -v nvme >/dev/null 2>&1; then
		return 0
	fi

	if command -v apt-get >/dev/null 2>&1; then
		sudo apt-get update -y && sudo apt-get install -y nvme-cli
	elif command -v dnf >/dev/null 2>&1; then
		sudo dnf install -y nvme-cli
	elif command -v pacman >/dev/null 2>&1; then
		sudo pacman -Sy --noconfirm nvme-cli
	elif command -v zypper >/dev/null 2>&1; then
		sudo zypper -n install nvme-cli
	elif command -v apk >/dev/null 2>&1; then
		sudo apk add --no-cache nvme-cli
	else
		return 1
	fi
}

trackpad_current_version()
{
	local tool="$1"
	local node="$2"
	local output

	output="$({ sudo "$tool" "$node" get_fwver 2>&1 || true; })"
	printf '%s
' "$output" | sed -n '
		s/.*The firmware version is[[:space:]]*//p
		s/.*Firmware Version:[[:space:]]*//p
	' | head -n1
}

update_touchscreen()
{
	local tool fw

	set_task touchscreen checking
	if [[ -z "$STARLITE_TOUCHSCREEN_NODE" ]]; then
		set_task touchscreen not-applicable
		return 0
	fi

	tool="$(ensure_binary gdixupdate)"
	fw="${WORKING_DIR}/GT7387P_00.A1.11.25(373E).bin"
	download_to "touchscreen/starlite-mkv/GT7387P_00.A1.11.25(373E).bin" "$fw"

	set_task touchscreen updating
	if sudo "$tool" -d "$STARLITE_TOUCHSCREEN_NODE" -s 7387 -f -i "$fw"; then
		set_task touchscreen "done"
	else
		set_task touchscreen failed
	fi
}

update_keyboard()
{
	local current_version tool fw

	set_task keyboard checking
	if (( STARLITE_KEYBOARD_PRESENT == 0 )); then
		set_task keyboard skipped
		return 0
	fi

	current_version="$(find_starlite_keyboard_version)"
	case "$current_version" in
	1.08)
		if (( REINSTALL == 0 )); then
			set_task keyboard up-to-date "$current_version"
			return 0
		fi
		fw="${WORKING_DIR}/kbfw.bin"
		download_to "keyboard/starlite-mkv/1.08/1.08.bin" "$fw"
		;;
	1.09)
		if (( REINSTALL == 0 )); then
			set_task keyboard up-to-date "$current_version"
			return 0
		fi
		fw="${WORKING_DIR}/kbfw.bin"
		download_to "keyboard/starlite-mkv/1.09/1.09.bin" "$fw"
		;;
	1.03|1.05)
		fw="${WORKING_DIR}/kbfw.bin"
		download_to "keyboard/starlite-mkv/1.09/1.09.bin" "$fw"
		;;
	1.04|1.06)
		fw="${WORKING_DIR}/kbfw.bin"
		download_to "keyboard/starlite-mkv/1.08/1.08.bin" "$fw"
		;;
	*)
		set_task keyboard skipped "unknown version ${current_version:-n/a}"
		return 0
		;;
	esac

	tool="$(ensure_binary kb-usb-flasher)"
	set_task keyboard updating "$current_version"
	if sudo "$tool" --rom-in "$fw" write -s 0x6000; then
		set_task keyboard "done"
	else
		set_task keyboard failed
	fi
}

update_trackpad()
{
	local tool fw current_version

	set_task trackpad checking
	if [[ -z "$STARFIGHTER_TRACKPAD_NODE" ]]; then
		set_task trackpad not-applicable
		return 0
	fi

	tool="$(ensure_binary pixtpfwup)"
	fw="${WORKING_DIR}/PT279_V2005.bin"
	download_to "trackpad/starfighter/PT279_V2005.bin" "$fw"
	current_version="$(trackpad_current_version "$tool" "$STARFIGHTER_TRACKPAD_NODE" || true)"

	if trackpad_version_matches_target "$current_version" && (( REINSTALL == 0 )); then
		set_task trackpad up-to-date "$current_version"
		return 0
	fi

	set_task trackpad updating "${current_version:-unknown}"
	if sudo "$tool" "$STARFIGHTER_TRACKPAD_NODE" up "$fw"; then
		set_task trackpad "done"
	else
		current_version="$(trackpad_current_version "$tool" "$STARFIGHTER_TRACKPAD_NODE" || true)"
		if trackpad_version_matches_target "$current_version"; then
			set_task trackpad "done" "$current_version"
		else
			set_task trackpad failed
		fi
	fi
}

update_camera()
{
	local camera_index rc=1 tool fw version

	set_task camera checking
	if (( CAMERA_UPDATES_ENABLED == 0 )); then
		set_task camera skipped "disabled"
		return 0
	fi

	if (( STARFIGHTER_CAMERA_PRESENT == 0 )); then
		set_task camera skipped
		return 0
	fi

	version="$(find_starfighter_camera_version || true)"
	if [[ "$version" == "$CAMERA_TARGET_VERSION" ]] && (( REINSTALL == 0 )); then
		set_task camera up-to-date "$version"
		return 0
	fi

	tool="$(ensure_binary V4L2_FWUpdate_GNU_x86_64)"
	fw="${WORKING_DIR}/HYGD-SPCA2092C-OV2740-1920x1080-30-15fps-N-AML-240907.bin"
	download_to "camera/starfighter/HYGD-SPCA2092C-OV2740-1920x1080-30-15fps-N-AML-240907.bin" "$fw"

	set_task camera updating "${version:-unknown}"
	if [[ -n "$STARFIGHTER_CAMERA_NODE" ]]; then
		camera_index="${STARFIGHTER_CAMERA_NODE#/dev/video}"
		if sudo "$tool" -D "$camera_index" -d "$fw"; then
			rc=0
		fi
	elif [[ "$STARFIGHTER_CAMERA_PID" == "0b09" ]]; then
		if sudo "$tool" -v 1bcf -p 0b09 -d "$fw"; then
			rc=0
		fi
	else
		set_task camera failed "no video node"
		return 0
	fi

	if (( rc == 0 )); then
		set_task camera "done"
	else
		set_task camera failed
	fi
}

detect_lexar_nm620()
{
	local mn sn rest size code

	command -v nvme >/dev/null 2>&1 || return 1
	[[ -e /dev/nvme0 && -e /dev/nvme0n1 ]] || return 1

	IFS=$'\t' read -r mn sn _ < <(
		sudo nvme id-ctrl /dev/nvme0 2>/dev/null | awk -F':' '
			/^[[:space:]]*mn[[:space:]]*:/ {m=$2}
			/^[[:space:]]*sn[[:space:]]*:/ {s=$2}
			END {
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", m)
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", s)
				s = substr(s, length(s)-4)
				printf "%s\t%s\n", m, s
			}'
	)

	[[ "$mn $sn" == "Lexar SSD NM620"* ]]
}

update_ssd()
{
	local mn sn fr info rest size code model ssdbin ssdfw currfw_digits fw

	set_task ssd checking
	if ! detect_lexar_nm620; then
		set_task ssd not-applicable
		return 0
	fi

	wait_for_charger
	ensure_nvme_cli || {
		set_task ssd failed "nvme-cli missing"
		return 0
	}

	IFS=$'\t' read -r mn sn fr < <(
		sudo nvme id-ctrl /dev/nvme0 2>/dev/null | awk -F':' '
			/^[[:space:]]*mn[[:space:]]*:/ {m=$2}
			/^[[:space:]]*sn[[:space:]]*:/ {s=$2}
			/^[[:space:]]*fr[[:space:]]*:/ {f=$2}
			END {
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", m)
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", s)
				gsub(/^[[:space:]]+|[[:space:]]+$/, "", f)
				s = substr(s, length(s)-4)
				printf "%s\t%s\t%s\n", m, s, f
			}'
	)

	info="$mn $sn"
	rest="$(echo "$info" | sed 's/.*Lexar SSD NM620[[:space:]]*//')"
	size="${rest%% *}"
	code="${rest##* }"
	model="${code}/${size}"
	ssdbin=""
	ssdfw=""

	case "$model" in
	"P1103/1TB") ssdbin="KC2RCADC.bin"; ssdfw="16391" ;;
	"P1103/512GB") ssdbin="KC2RCALC.bin"; ssdfw="16391" ;;
	"P110W/2TB") ssdbin="ATH1CA2C.bin"; ssdfw="16422" ;;
	"P110W/1TB") ssdbin="ATH1CALC.bin"; ssdfw="16422" ;;
	"P110W/512GB") ssdbin="ATH1CADC.bin"; ssdfw="16422" ;;
	"P111D/2TB") ssdbin="YIQZCB2C.bin"; ssdfw="13767" ;;
	"P1125/2TB") ssdbin="OOD4CA4C.bin"; ssdfw="32900" ;;
	"P112W/512GB") ssdbin="ATH1CADC.bin"; ssdfw="16263" ;;
	"P1157/1TB") ssdbin="KCA1AA4C.bin"; ssdfw="28241" ;;
	"P113V/1TB") ssdbin="UK3SCELC.bin"; ssdfw="13294" ;;
	"P113V/2TB") ssdbin="UK3SCE2C.bin"; ssdfw="13294" ;;
	*)
		set_task ssd skipped "unknown ${model}"
		return 0
		;;
	esac

	currfw_digits="$(echo "${fr:-}" | tr -cd '0-9' | sed 's/^0*//')"
	if [[ -n "$currfw_digits" && "$currfw_digits" == "$ssdfw" ]] && (( REINSTALL == 0 )); then
		set_task ssd up-to-date "$currfw_digits"
		return 0
	fi

	fw="${WORKING_DIR}/ssdfw.bin"
	download_to "ssd/lexar-nm620/${model}/${ssdbin}" "$fw"
	set_task ssd updating "${currfw_digits:-unknown}"
	if sudo nvme fw-download -f "$fw" /dev/nvme0n1 && sudo nvme fw-commit -s 1 -a 3 /dev/nvme0n1; then
		set_task ssd "done"
	else
		set_task ssd failed
	fi
}

update_coreboot()
{
	local tool reset_tool fw flashrom_log relpath
	local -a flashrom_flags=()

	set_task coreboot checking
	wait_for_charger

	tool="$(ensure_binary flashrom)"
	reset_tool="$(ensure_binary reset-cmos)"
	fw="${WORKING_DIR}/${SKU}.bios"
	relpath="$(coreboot_rom_relpath)"
	if ! download_to "$relpath" "$fw"; then
		set_task coreboot failed "missing $(basename "$relpath")"
		printf "\n%sMissing BIOS payload for %s.%s\n" "$RED" "$RAW_SKU" "$RESET" >&2
		printf "Expected %s%s%s in the firmware release.\n" "$BOLD" "$relpath" "$RESET" >&2
		return 0
	fi
	if [[ ! -s "$fw" ]]; then
		set_task coreboot failed "missing $(basename "$relpath")"
		printf "\n%sMissing BIOS payload for %s.%s\n" "$RED" "$RAW_SKU" "$RESET" >&2
		printf "Expected %s%s%s in the firmware release.\n" "$BOLD" "$relpath" "$RESET" >&2
		return 0
	fi

	if [[ "$SKU" != "B6-A" && "$SKU" != "Y1" ]]; then
		flashrom_flags=(--ifd -i bios -n -N)
	fi

	flashrom_log="${WORKING_DIR}/flashrom-coreboot.log"
	printf "\n%sThis BIOS update will shut the system down automatically when flashing is complete.%s\n" "$YELLOW" "$RESET"
	printf "After shutdown, disconnect the charger and wait about 12 seconds until the LEDs flicker before powering back on.\n"
	set_task coreboot updating "$BIOS_VERSION"
	if sudo "$tool" -p internal -w "$fw" "${flashrom_flags[@]}" >"$flashrom_log" 2>&1; then
		set_task coreboot "done"
		if task_is_wanted mirror-flag; then
			sudo "$reset_tool" || true
			return 0
		fi
		if prompt_shutdown_after_coreboot_update; then
			sudo "$reset_tool" || true
			sudo shutdown now
		fi
	else
		set_task coreboot failed
		printf "\n%sflashrom failed while updating coreboot.%s\n" "$RED" "$RESET" >&2
		if [[ -s "$flashrom_log" ]]; then
			sed 's/^/  /' "$flashrom_log" >&2
		fi
	fi
}

update_mirror_flag()
{
	local tool

	set_task mirror-flag checking
	tool="$(ensure_binary ectool)"
	set_task mirror-flag updating
	if sudo "$tool" -w 05 -z aa; then
		set_task mirror-flag done
		printf "\n%sMirror flag set. Shutting down now.%s\n" "$GREEN" "$RESET"
		if sudo shutdown now; then
			exit 0
		fi
		set_task mirror-flag failed "shutdown failed"
		printf "\n%sMirror flag was set, but shutdown failed.%s\n" "$RED" "$RESET" >&2
		return 1
	fi

	set_task mirror-flag failed
	printf "\n%sFailed to set the mirror flag.%s\n" "$RED" "$RESET" >&2
	return 1
}

prepare_optional_devices()
{
	if (( CAMERA_ONLY == 0 )) && [[ "$RAW_SKU" == I5* ]]; then
		if wait_for_optional_device "the StarLite keyboard" has_starlite_keyboard 45; then
			STARLITE_KEYBOARD_PRESENT=1
		fi
	fi

	if (( CAMERA_UPDATES_ENABLED == 1 )) && starfighter_sku; then
		if wait_for_optional_device "the StarFighter camera" find_starfighter_camera_usb_dir 45; then
			STARFIGHTER_CAMERA_PRESENT=1
			STARFIGHTER_CAMERA_NODE="$(find_starfighter_camera_node || true)"
			STARFIGHTER_CAMERA_PID="$(find_starfighter_camera_pid || true)"
		fi
	fi
}

build_task_list()
{
	if (( CAMERA_ONLY == 1 )); then
		if ! starfighter_sku; then
			add_task camera "StarFighter camera" skipped "unsupported system"
		elif (( CAMERA_UPDATES_ENABLED == 0 )); then
			add_task camera "StarFighter camera" skipped "disabled"
		elif (( STARFIGHTER_CAMERA_PRESENT == 1 )); then
			add_task camera "StarFighter camera"
		else
			add_task camera "StarFighter camera" skipped "not connected"
		fi
		return
	fi

	STARLITE_TOUCHSCREEN_NODE="$(find_starlite_touchscreen_node || true)"
	STARFIGHTER_TRACKPAD_NODE="$(find_starfighter_trackpad_node || true)"
	if detect_lexar_nm620; then
		LEXAR_PRESENT=1
	fi

	if [[ -n "$STARLITE_TOUCHSCREEN_NODE" ]]; then
		add_task touchscreen "StarLite touchscreen"
	fi
	if [[ "$RAW_SKU" == I5* ]]; then
		if (( STARLITE_KEYBOARD_PRESENT == 1 )); then
			add_task keyboard "StarLite keyboard"
		else
			add_task keyboard "StarLite keyboard" skipped "not connected"
		fi
	fi
	if starfighter_sku && [[ -n "$STARFIGHTER_TRACKPAD_NODE" ]]; then
		add_task trackpad "StarFighter trackpad"
	fi
	if starfighter_sku; then
		if (( CAMERA_UPDATES_ENABLED == 0 )); then
			add_task camera "StarFighter camera" skipped "disabled"
		elif (( STARFIGHTER_CAMERA_PRESENT == 1 )); then
			add_task camera "StarFighter camera"
		else
			add_task camera "StarFighter camera" skipped "not connected"
		fi
	fi
	if (( LEXAR_PRESENT == 1 )); then
		add_task ssd "Lexar NM620 SSD"
	fi
	add_task coreboot "coreboot"
	if (( SET_MIRROR_FLAG == 1 )); then
		add_task mirror-flag "EC mirror flag"
	fi
}

main()
{
	parse_args "$@"
	init_power_state
	prepare_optional_devices
	build_task_list
	render_tasks
	discover_updates
	add_prerequisite_tasks
	render_tasks

	if (( PENDING_UPDATES == 0 )); then
		if (( CAMERA_ONLY == 1 )); then
			if [[ "${TASK_STATUS[camera]:-}" == "up-to-date" ]]; then
				printf "\n%sStarFighter camera is already up to date.%s\n" "$GREEN" "$RESET"
			else
				printf "\n%sStarFighter camera update skipped" "$BLUE"
				if [[ -n "${TASK_DETAIL[camera]:-}" ]]; then
					printf ": %s" "${TASK_DETAIL[camera]}"
				fi
				printf ".%s\n" "$RESET"
			fi
		else
			printf "\n%sAll firmware is already up to date.%s\n" "$GREEN" "$RESET"
		fi
		return 0
	fi

	show_release_notes

	if ! ensure_sudo; then
		printf "\n%sSudo authentication is required to continue.%s\n" "$RED" "$RESET" >&2
		exit 1
	fi

	run_prerequisite_checks || exit 1

	for key in "${TASK_KEYS[@]}"; do
		if ! task_is_wanted "$key"; then
			continue
		fi
		case "$key" in
		touchscreen) update_touchscreen ;;
		keyboard) update_keyboard ;;
		trackpad) update_trackpad ;;
		camera) update_camera ;;
		ssd) update_ssd ;;
		coreboot) update_coreboot ;;
		mirror-flag) update_mirror_flag ;;
		esac
	done

	printf "\n%sAll firmware checks complete.%s\n" "$GREEN" "$RESET"
}

main "$@"
