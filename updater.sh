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

SKU="$(< /sys/class/dmi/id/product_sku)"

pushd "$WORKING_DIR" >/dev/null

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
	done
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

# Coreboot
function update_coreboot() {
	current_version=$(cat /sys/class/dmi/id/bios_version)
	if [[ "$current_version" != "25.07" ]]; then
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

update_touchscreen
update_keyboard
update_coreboot
echo "All firmware up to date"
