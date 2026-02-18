## SPDX-License-Identifier: GPL-2.0-only

export SHELL := env bash

override target := coreboot

include make/Makefile.targets
include make/Makefile.models
include make/Makefile.nsh_script
include make/Makefile.metadata

all: help

PUSH ?= 1

date = $(shell date '+%Y-%m-%d')

BOARD_DIR = $(model)
OUTPUT_DIR = $(BOARD_DIR)/$(version)

WORK_DIR = $(OUTPUT_DIR)/.work

RELEASE_NOTES = $(WORK_DIR)/release_notes.md
METAINFO = $(WORK_DIR)/$(sku).$(target).metainfo.xml
PAYLOAD = $(WORK_DIR)/$(sku).$(file_type)
PAYLOAD_FILENAME = $(notdir $(PAYLOAD))
CAB = $(OUTPUT_DIR)/coreboot-$(sku).cab
STARTUP_NSH = $(WORK_DIR)/startup.nsh
EFI_ZIP = $(OUTPUT_DIR)/efi-$(sku).zip
RELEASES_README = README.md

SUPPORT_LINK = https://support.starlabs.systems/kb/firmware/getting-started
CAB_URL = $(link)/$(notdir $(CAB))
EFI_ZIP_URL = $(link)/$(notdir $(EFI_ZIP))

.SILENT: help $(STARTUP_NSH) $(METAINFO)

$(OUTPUT_DIR):
	mkdir -p $@

$(WORK_DIR):						| $(OUTPUT_DIR)
	rm -rf $@
	mkdir -p $@

CAPSULE_APP_EFI ?= binaries/CapsuleApp.efi
EFI_PAYLOAD = $(PAYLOAD)
EFI_TOOL_EFI = $(CAPSULE_APP_EFI)

$(CAPSULE_APP_EFI):
	echo "ERROR: Missing $@"
	echo "       Provide an EDK2 CapsuleApp build (UEFI Shell app) at this path,"
	echo "       or override CAPSULE_APP_EFI=/path/to/CapsuleApp.efi"
	exit 1


COREBOOT_DIR ?= "../coreboot"

$(PAYLOAD):						| $(WORK_DIR)
	@if [[ -n "$(binary)" ]]; then \
		if [[ ! -f "$(binary)" ]]; then \
			echo "ERROR: binary file not found: $(binary)"; \
			exit 1; \
		fi; \
		cp "$(binary)" "$@"; \
	else \
		sed -i 's/CONFIG_LOCALVERSION=.*/CONFIG_LOCALVERSION="$(version)"/' $(COREBOOT_DIR)/configs/config.starlabs_$(model); \
		rm -rf $(COREBOOT_DIR)/build 2>/dev/null; \
		make -C $(COREBOOT_DIR) clean; \
		make -C $(COREBOOT_DIR) defconfig KBUILD_DEFCONFIG=configs/config.starlabs_$(model); \
		make -C $(COREBOOT_DIR) -j $(shell nproc); \
		if [[ ! -f "$(COREBOOT_DIR)/build/coreboot.cap" ]]; then \
			echo "ERROR: $(COREBOOT_DIR)/build/coreboot.cap was not generated."; \
			echo "       Ensure coreboot is configured with CONFIG_DRIVERS_EFI_GENERATE_CAPSULE=y and rebuild."; \
			exit 1; \
		fi; \
		cp "$(COREBOOT_DIR)/build/coreboot.cap" "$@"; \
	fi

# Standard CAB
METAINFO_DEPS = Makefile make/Makefile.metadata make/Makefile.targets make/Makefile.models
$(METAINFO):					$(METAINFO_DEPS) $(RELEASE_NOTES) | $(WORK_DIR)
	printf '$(metadata)' > $@

$(CAB):						$(METAINFO) $(PAYLOAD) $(RELEASE_NOTES) | $(OUTPUT_DIR)
	gcab -cn $@ $^

# EFI Shell
STARTUP_NSH_DEPS = Makefile make/Makefile.nsh_script
$(STARTUP_NSH):					$(STARTUP_NSH_DEPS) $(RELEASE_NOTES) | $(WORK_DIR)
	printf '$(nsh_script)' > $@

$(EFI_ZIP):					$(STARTUP_NSH)					\
						$(EFI_PAYLOAD)				\
						$(EFI_TOOL_EFI)
	zip -rj $@ $^


# Release notes
$(RELEASE_NOTES):				| $(WORK_DIR)
	if [[ ! -z "$(release_notes)" && -f "$(release_notes)" ]]; then \
	  cp $(release_notes) $(RELEASE_NOTES); \
	else \
	  nano $(RELEASE_NOTES); \
	fi;

meta_release_notes = $(shell if [[ -f "$(RELEASE_NOTES)" ]]; then \
	awk ' \
		function trim(s) { sub(/^[[:space:]]+/, "", s); sub(/[[:space:]]+$$/, "", s); return s } \
		function xml(s)  { gsub(/&/, "\\&amp;", s); gsub(/</, "\\&lt;", s); gsub(/>/, "\\&gt;", s); return s } \
		BEGIN { in_ul = 0 } \
			{ sub(/\r$$/, "", $$0) } \
		/^[[:space:]]*$$/ { if (in_ul) { printf "        </ul>\\n"; in_ul = 0; } next; } \
		/^[[:space:]]*\*/ { \
			line = $$0; sub(/^[[:space:]]*\*[[:space:]]*/, "", line); line = xml(trim(line)); \
			if (!in_ul) { printf "        <ul>\\n"; in_ul = 1; } \
			printf "          <li>%s</li>\\n", line; \
			next; \
		} \
		{ \
			if (in_ul) { printf "        </ul>\\n"; in_ul = 0; } \
			line = xml(trim($$0)); \
			printf "        <p>%s</p>\\n", line; \
		} \
		END { if (in_ul) printf "        </ul>\\n"; } \
	' "$(RELEASE_NOTES)"; \
fi)


nsh_release_notes = $(shell if [[ -f "$(RELEASE_NOTES)" ]]; then					\
	awk '											\
		{ sub(/\r$$/, "", $$0) }								\
		{ line=$$0; gsub(/"/, "\\\\\"", line); printf "echo \\\"%s\\\"\\n", line }	\
	' "$(RELEASE_NOTES)";									\
fi)

readme_release_notes = $(shell if [[ -f "$(RELEASE_NOTES)" ]]; then	\
	awk '{ sub(/\r$$/, "", $$0); printf ">     %s\\n", $$0 }' "$(RELEASE_NOTES)"; \
fi)

GIT_BRANCH ?= $(shell git rev-parse --abbrev-ref HEAD 2>/dev/null || echo master)
link = https://github.com/StarLabsLtd/firmware/raw/refs/heads/$(GIT_BRANCH)/$(OUTPUT_DIR)


push_to_git:
	if ! grep -qE "^[#]+[[:space:]]*\\[$(version)\\]" "$(RELEASES_README)" 2>/dev/null; then \
		printf "\n#### [$(version)] $(date)\n" >> "$(RELEASES_README)"; \
		printf '$(readme_release_notes)\n' >> "$(RELEASES_README)"; \
	fi
	git add $(CAB) $(EFI_ZIP) $(RELEASES_README)
	if git diff --cached --quiet; then \
		echo "NOTE: No changes to commit"; \
	else \
		{ \
			printf "firmware: %s %s\n\n" "$(model)" "$(version)"; \
			printf "Board: %s\n" "$(model)"; \
			printf "Model: %s\n" "$(name)"; \
			printf "SKU: %s\n" "$(sku)"; \
			printf "Target: %s\n" "$(target)"; \
			printf "Version: %s\n" "$(version)"; \
			printf "Date: %s\n" "$(date)"; \
			printf "Support: %s\n" "$(SUPPORT_LINK)"; \
			printf "\nArtifacts:\n"; \
			printf "  CAB: %s\n" "$(CAB_URL)"; \
			printf "  EFI ZIP: %s\n" "$(EFI_ZIP_URL)"; \
			printf "\nRelease notes:\n"; \
			if [[ -f "$(RELEASE_NOTES)" ]]; then awk '{ sub(/\r$$/, ""); print }' "$(RELEASE_NOTES)"; fi; \
		} | git commit -F -; \
	fi

release: 					$(CAB) $(EFI_ZIP)

ifeq ($(PUSH),1)
	$(MAKE) push_to_git
endif
	rm -rf "$(WORK_DIR)"

help:
	printf "Star Labs Firmware\n\n"
	printf "Usage\n"
	printf "\nThis repo stores coreboot releases as:\n"
	printf "  <board>/<version>/{coreboot-<sku>.cab, efi-<sku>.zip}\n"

	printf "\nmodel:\n"
	printf "%-25s %s\n"	"lite_apl"		"StarLite Mk II"
	printf "%-25s %s\n"	"lite_glk"		"StarLite Mk III"
	printf "%-25s %s\n"	"lite_glkr"		"StarLite Mk IV"
	printf "%-25s %s\n"	"lite_adl"		"StarLite Mk V"
	printf "%-25s %s\n"	"labtop_kbl"		"StarLabTop Mk III"
	printf "%-25s %s\n" 	"labtop_cml"		"StarLabTop Mk IV"
	printf "%-25s %s\n"	"starbook_tgl"		"StarBook Mk V"
	printf "%-25s %s\n"	"starbook_adl"		"StarBook Mk VI - Intel"
	printf "%-25s %s\n"	"starbook_cezanne"	"StarBook Mk VI - AMD"
	printf "%-25s %s\n"	"starbook_rpl"		"StarBook Mk VI-r2 - Intel"
	printf "%-25s %s\n"	"starbook_adl_n"	"StarBook Mk VII-N"
	printf "%-25s %s\n"	"starbook_mtl"		"StarBook Mk VII-U"
	printf "%-25s %s\n"	"starfighter_rpl"	"StarFighter Mk I"
	printf "%-25s %s\n"	"starfighter_mtl"	"StarFighter Mk II"
	printf "%-25s %s\n"	"adl_horizon"		"StarBook Horizon"
	printf "%-25s %s\n"	"byte_cezanne"		"Byte Mk I"
	printf "%-25s %s\n"	"byte_adl"		"Byte Mk II"
	printf "%-25s %s\n"	"byte_twl"		"Byte Mk III"

	printf "\nversion:\n"
	printf "%-25s %s\n"	"pair"			"1.00"
	printf "%-25s %s\n"	"triplet"		"1.0.0"

	printf "\nExample usage:\n"
	printf "./build-coreboot-release.sh starbook_adl 8.18 /path/to/release_notes.md [/path/to/coreboot.cap]\n"
	printf "\nIf no .cap is provided, coreboot is built from COREBOOT_DIR (default: ../coreboot).\n\n"

.PHONY: help release push_to_git
