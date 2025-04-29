#!/usr/bin/env bash
#

set -e

build_targets=(byte_adl labtop_cml labtop_kbl lite_adl lite_adl_sb starbook_adl \
    starbook_adl_n starbook_mtl starbook_rpl starbook_tgl starfighter_rpl)

if [ -z "$1" ]; then
  echo -e "Error: release version required"
  echo -e "Usage: ./build-coreboot-release.sh <release_version> [<release_notes>]"
  exit 1
fi

VERSION=$1
NOTES=$2

for device in "${build_targets[@]}"; do
	make coreboot target=coreboot model="$device" version="$VERSION" release_notes="$NOTES"
done
