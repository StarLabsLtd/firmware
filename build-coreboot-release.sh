#!/usr/bin/env bash
#

set -euo pipefail

build_targets=(
	byte_adl
	byte_twl
	labtop_cml
	labtop_kbl
	lite_adl
	starbook_adl
	starbook_adl_n
	starbook_mtl
	starbook_rpl
	starbook_tgl
	starfighter_rpl
	starfighter_mtl
	adl_horizon
)

required_firmware_version=26.04

usage() {
	cat <<'EOF'
Usage:
  ./build-coreboot-release.sh <board> <version> <release_notes.md> [<payload>]

Notes:
  - If <payload> is provided, it is used as the release payload.
  - .cap inputs generate the CAB/EFI artifacts, but roms/<sku>.bios still comes from
    COREBOOT_DIR/build/coreboot.rom if available.
  - .rom/.bios inputs also populate roms/<sku>.bios directly.
  - If no payload is provided, coreboot is built from COREBOOT_DIR (default: ../coreboot).

Boards:
  all
EOF
	printf "  %s\n" "${build_targets[@]}"
}

if [[ $# -lt 3 ]]; then
	usage
	exit 1
fi

BOARD="$1"
VERSION="$2"
NOTES="$3"
BINARY="${4:-}"

run_make() {
	local board="$1"
	if [[ -n "$BINARY" ]]; then
		make release model="$board" version="$VERSION" release_notes="$NOTES" binary="$BINARY" required_firmware_version="$required_firmware_version"
	else
		make release model="$board" version="$VERSION" release_notes="$NOTES" required_firmware_version="$required_firmware_version"
	fi
}

if [[ "$BOARD" == "all" ]]; then
	if [[ -n "$BINARY" ]]; then
		echo "Error: binary payload cannot be used with board=all"
		exit 1
	fi
	for device in "${build_targets[@]}"; do
		run_make "$device"
	done
else
	run_make "$BOARD"
fi
