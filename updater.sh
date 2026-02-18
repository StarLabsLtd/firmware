#!/bin/bash

set -euo pipefail

# Colors
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
RESET=$(tput sgr0)

# Wait for charger if discharging
while upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -q "state:\s*discharging"; do
	echo "${YELLOW}Please connect the charger...${RESET}"
	sleep 10
done

WORKING_DIR="/tmp"
REPO="https://github.com/StarLabsLtd/firmware/raw/refs/heads/main/"

SKU_RAW=$(cat /sys/class/dmi/id/product_sku)
SKU=$(echo "$SKU_RAW" | sed -e 's/-SB//' -e 's/-MXC//')

pushd "$WORKING_DIR" >/dev/null

function get_fw_tools() {
	if ! command -v nvme >/dev/null 2>&1; then
		echo "Installing nvme-cli..."
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
			echo "Please install nvme-cli manually."
		fi
	fi
}

# Touchscreen
function update_touchscreen() {
	for SYS in /sys/class/hidraw/hidraw*; do
		if grep -qFx "hid:b0018g0004v000027C6p00000111" "$SYS/device/modalias"; then
			wget -q "$REPO/binaries/gdixupdate"
			chmod +x gdixupdate
			wget -q "$REPO/StarLite/MkV/touchscreen/GT7387P_00.A1.11.25(373E).bin"

			if sudo ./gdixupdate -d "/dev/$(basename "$SYS")" -s 7387 -f -i "$WORKING_DIR/GT7387P_00.A1.11.25(373E).bin"; then
				echo "Touchscreen update complete."
			else
				echo "Touchscreen update failed!"
			fi
		fi
	done || true
}

# Keyboard
function update_keyboard() {
	if lsusb -d 1018:1006 >/dev/null 2>&1; then
		current_version=$(lsusb -d 1018:1006 -v 2>/dev/null | awk '/bcdDevice/ { print $2; exit }')
		if [[ "$current_version" == "1.08" ]] || [[ "$current_version" == "1.09" ]]; then
			echo "Keyboard is already up-to-date"
		else
			wget -q "$REPO/binaries/kb-usb-flasher"
			chmod +x kb-usb-flasher

			if [[ "$current_version" == "1.03" ]] || [[ "$current_version" == "1.05" ]]; then
				wget -q "$REPO/StarLite/MkV/keyboard/1.09/1.09.bin" -O kbfw.bin
			elif [[ "$current_version" == "1.04" ]] || [[ "$current_version" == "1.06" ]]; then
				wget -q "$REPO/StarLite/MkV/keyboard/1.08/1.08.bin" -O kbfw.bin
			fi

			if [[ -f "kbfw.bin" ]]; then
				if sudo ./kb-usb-flasher --rom-in kbfw.bin write -s 0x6000; then
					echo "Updating keyboard - do not disconnect your keyboard."
					sleep 10
					echo "Keyboard update complete. Please disconnect and reconnect your keyboard."
				else
					echo "Keyboard update failed!"
				fi
			fi
		fi
	fi
}

function update_ssd() {
	IFS=$'\t' read -r mn sn fr < <(
		sudo nvme id-ctrl /dev/nvme0 | awk -F':' '
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
	if [[ "$info" == "Lexar SSD NM620"* ]]; then
		# Strip leading model text, leaving "<size> <last5>"
		rest=$(echo "$info" | sed 's/.*Lexar SSD NM620[[:space:]]*//')	# e.g. "1TB P110W"
		size="${rest%% *}"
		code="${rest##* }"
		model="${code}/${size}"

		# Map to bin + expected firmware numeric (from your table)
		ssdbin=""; ssdfw=""
		case "$model" in
			"P1103/1TB")	ssdbin="KC2RCADC.bin"; ssdfw="16391" ;;
			"P1103/512GB")	ssdbin="KC2RCALC.bin"; ssdfw="16391" ;;
			"P110W/2TB")	ssdbin="ATH1CA2C.bin"; ssdfw="16422" ;;
			"P110W/1TB")	ssdbin="ATH1CALC.bin"; ssdfw="16422" ;;
			"P110W/512GB")	ssdbin="ATH1CADC.bin"; ssdfw="16422" ;;
			"P111D/2TB")	ssdbin="YIQZCB2C.bin"; ssdfw="13767" ;;
			"P1125/2TB")	ssdbin="OOD4CA4C.bin"; ssdfw="32900" ;;
			"P112W/512GB")	ssdbin="ATH1CADC.bin"; ssdfw="16263" ;;
			"P1157/1TB")	ssdbin="KCA1AA4C.bin"; ssdfw="28241" ;;
			"P113V/1TB")	ssdbin="UK3SCELC.bin"; ssdfw="16943" ;;
			"P113V/2TB")	ssdbin="UK3SCE2C.bin"; ssdfw="16943" ;;
		esac

		# Current firmware revision as digits only (e.g. SN28192 -> 28192)
		currfw_digits=$(echo "$fr" | tr -cd '0-9' | sed 's/^0*//')

		if [[ -n "$currfw_digits" && -n "$ssdfw" && "$currfw_digits" == "$ssdfw" ]]; then
			echo "SSD firmware up to date (current fr=$currfw_digits matches expected $ssdfw)."
			return 0
		fi

		if wget -q "$REPO/Lexar/NM620/$model/$ssdbin" -O ssdfw.bin; then
			sudo nvme fw-download -f ssdfw.bin /dev/nvme0n1 && \
			sudo nvme fw-commit -s 1 -a 3 /dev/nvme0n1
		fi
	fi
}

function update_coreboot() {
	function sku_to_board() {
		case "$1" in
			Y1) echo "byte_cezanne" ;;
			Y2) echo "byte_adl" ;;
			Y3) echo "byte_twl" ;;
			L3) echo "labtop_kbl" ;;
			L4) echo "labtop_cml" ;;
			I2) echo "lite_apl" ;;
			I3) echo "lite_glk" ;;
			I4) echo "lite_glkr" ;;
			I5) echo "lite_adl" ;;
			B5) echo "starbook_tgl" ;;
			B6-I) echo "starbook_adl" ;;
			B62-I) echo "starbook_rpl" ;;
			B7-N) echo "starbook_adl_n" ;;
			B7-U) echo "starbook_mtl" ;;
			F1) echo "starfighter_rpl" ;;
			F2) echo "starfighter_mtl" ;;
			HZ) echo "adl_horizon" ;;
		esac
	}

	echo "${YELLOW}Coreboot updates now use UEFI capsules via fwupd (no flashrom ROM downloads).${RESET}"

	board=$(sku_to_board "$SKU")
	if [[ -z "${board:-}" ]]; then
		echo "${YELLOW}Unknown SKU '$SKU_RAW' (mapped '$SKU'); skipping coreboot update.${RESET}"
		return 0
	fi

	latest_version=$(wget -qO- "${REPO}README.md" | awk -F'[][]' '/^####[[:space:]]*\\[[0-9]+\\.[0-9]+\\]/ { print $2; exit }')
	if [[ -z "${latest_version:-}" ]]; then
		echo "${RED}Failed to determine latest coreboot release version from README.md.${RESET}"
		return 1
	fi

	cab_url="${REPO}${board}/${latest_version}/coreboot-${SKU}.cab"
	cab_file="${WORKING_DIR}/coreboot-${SKU}.cab"

	echo "${YELLOW}Downloading ${cab_url}${RESET}"
	if ! wget -q "$cab_url" -O "$cab_file"; then
		echo "${RED}Failed to download coreboot CAB for SKU '$SKU'.${RESET}"
		return 1
	fi

	if command -v fwupdmgr >/dev/null 2>&1; then
		sudo fwupdmgr install "$cab_file"
	elif command -v fwupdtool >/dev/null 2>&1; then
		sudo fwupdtool install-blob "$cab_file"
	else
		echo "${RED}Neither fwupdmgr nor fwupdtool is installed; cannot apply coreboot capsule.${RESET}"
		echo "${YELLOW}Install fwupd, then run: sudo fwupdmgr install \"$cab_file\"${RESET}"
		return 1
	fi
}

get_fw_tools
update_touchscreen
update_keyboard
update_ssd
update_coreboot
echo "Done"
