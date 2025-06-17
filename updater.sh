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
	wget -q "$REPO/binaries/gdixupdate"
	chmod +x gdixupdate
	wget -q "$REPO/StarLite/MkV/touchscreen/GT7387P_00.A1.11.25(373E).bin"

	for SYS in /sys/class/hidraw/hidraw*; do
		if grep -qFx "hid:b0018g0004v000027C6p00000111" "$SYS/device/modalias"; then
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
	wget -q "$REPO/binaries/kb-usb-flasher"
	chmod +x kb-usb-flasher



	keyboard_variant=$(lsusb -d 1018:1006 -v 2>/dev/null | awk '/bcdDevice/ { print $2; exit }')

	if [[ -n "$keyboard_variant" ]]; then
		wget -q "$REPO/StarLite/MkV/keyboard/$keyboard_variant.bin" -O kbfw.bin

		if sudo ./kb-usb-flasher --rom-in kbfw.bin write -s 0x6000; then
			echo "Updating keyboard - do not disconnect your keyboard."
			sleep 30
			echo "Keyboard update complete. Please disconnect and reconnect your keyboard."
		else
			echo "Keyboard update failed!"
		fi
	else
		echo "No keyboard detected"
	fi
}

# Coreboot
function update_coreboot() {
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
}

while true; do
	task=""
	echo
	echo "${YELLOW}===== Manual Firmware Update =====${RESET}"
	PS3="${GREEN}Enter choice (0 to exit): ${RESET}"
	if [[ "$SKU" == "I5" || "$SKU" == "I5-SB" ]]; then
		options=(touchscreen keyboard coreboot)
	else
		options=(coreboot)
	fi
	select opt in "${options[@]}"; do
		if [[ -z $opt ]]; then
			echo "${YELLOW}Invalid selection.${RESET}"
			continue
		fi
		task="$opt"
		break
	done

	case "$task" in
		touchscreen) update_touchscreen ;;
		keyboard)    update_keyboard    ;;
		coreboot)    update_coreboot    ;;
	esac
done
