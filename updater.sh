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

SKU=$(sed 's/-SB//' /sys/class/dmi/id/product_sku)

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

	if ! command -v flashrom >/dev/null 2>&1; then
		echo "Installing flashrom..."
		if command -v apt-get >/dev/null 2>&1; then
			sudo apt-get install -y flashrom
		elif command -v dnf >/dev/null 2>&1; then
			sudo dnf install -y flashrom
		elif command -v pacman >/dev/null 2>&1; then
			sudo pacman -Sy --noconfirm flashrom
		elif command -v zypper >/dev/null 2>&1; then
			sudo zypper -n install flashrom
		elif command -v apk >/dev/null 2>&1; then
			sudo apk add --no-cache flashrom
		else
			echo "Please install flashrom manually."
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
			"P110W/1TB")	ssdbin="ATH1CALC.bin"; ssdfw="16422" ;;
			"P110W/512GB")	ssdbin="ATH1CADC.bin"; ssdfw="16422" ;;
			"P111D/2TB")	ssdbin="YIQZCB2C.bin"; ssdfw="13767" ;;
			"P1125/2TB")	ssdbin="OOD4CA4C.bin"; ssdfw="32900" ;;
			"P112W/512GB")	ssdbin="ATH1CADC.bin"; ssdfw="16263" ;;
			"P1157/1TB")	ssdbin="KCA1AA4C.bin"; ssdfw="28241" ;;
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

# Coreboot
function update_coreboot() {
	current_version=$(cat /sys/class/dmi/id/bios_version)
	if [[ "$current_version" != "25.10" ]]; then
		echo "${YELLOW}Make sure flashrom 1.3.0 or newer is installed.${RESET}"

		wget "$REPO/binaries/reset-cmos"
		chmod +x reset-cmos
		wget "$REPO/roms/$SKU.bios"
		read -p "Once updated, the system will automatically shutdown. Please [Enter] to continue"

		[ "$SKU" = "B6-A" ] && flags="" || flags="--fmap -n -N -i COREBOOT -i EC"
		if sudo flashrom -p internal -w "$SKU.bios" $flags; then
			echo "coreboot update complete. System will now shutdown."
			sudo ./reset-cmos
			sudo shutdown now
		else
			echo "coreboot update failed."
		fi
	fi
}

get_fw_tools
update_touchscreen
update_keyboard
update_ssd
update_coreboot
echo "All firmware up to date"
