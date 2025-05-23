#!/bin/bash

set -euo pipefail

# Colors
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
RESET=$(tput sgr0)

# Wait for charger if discharging
while upower -i /org/freedesktop/UPower/devices/battery_BAT0 \
      | grep -q "state:\s*discharging"; do
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

    MODALIAS="hid:b0018g0004v000027C6p00000111"
    for SYS in /sys/class/hidraw/hidraw*; do
        if grep -qFx "$MODALIAS" "$SYS/device/modalias"; then
            DEVNODE="/dev/$(basename "$SYS")"
            if sudo ./gdixupdate \
                -d "$DEVNODE" \
                -s 7387 \
                -f \
                -i "$WORKING_DIR/GT7387P_00.A1.11.25(373E).bin"; then
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

    PS3="Select keyboard layout (1 ansi, 2 iso): "
    options=("ansi - English (US)" "iso - All other layouts")
    select layout in "${options[@]}"; do
        if [[ -n $layout ]]; then
            break
        else
            echo "Invalid selection, try again."
        fi
    done

    wget -q "$REPO/StarLite/MkV/keyboard/${layout}.bin" -O kbfw.bin

    USB_ID="1018:1006"
    if lsusb | grep -q "$USB_ID"; then
        if sudo ./kb-usb-flasher --rom-in kbfw.bin write; then
            echo "Keyboard update complete. Please reconnect your keyboard."
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

    wget -q "$REPO/binaries/reset-cmos"
    chmod +x reset-cmos
    wget -q "$REPO/StarLite/$(< /sys/class/dmi/id/product_sku)/25.05/25.05.rom"

    if sudo flashrom -p internal -w 25.05.rom --fmap -n -N -i COREBOOT -i EC; then
        echo "Coreboot update complete. System will now shutdown."
        ./reset-cmos
        sudo shutdown now
    else
        echo "Coreboot update failed."
    fi
}

while true; do
    task=""
    echo
    echo "${YELLOW}===== StarLite Mk V Updater =====${RESET}"
    PS3="${GREEN}Enter choice (0 to exit): ${RESET}"
    if [[ "$SKU" == "I5" || "$SKU" == "I5-SB" ]]; then
        options=(touchscreen keyboard coreboot)
    else
        options=(coreboot)
    fi
    select opt in "${options[@]}"; do
        case $REPLY in
            1) task="touchscreen"; break ;;
            2) task="keyboard";    break ;;
            3) task="coreboot";    break ;;
            *) exit 0 ;;
        esac
    done

    case "$task" in
        touchscreen) update_touchscreen ;;
        keyboard)    update_keyboard    ;;
        coreboot)    update_coreboot    ;;
    esac
done
