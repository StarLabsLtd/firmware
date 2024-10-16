## SPDX-License-Identifier: GPL-2.0-only

export SHELL := env bash

include make/Makefile.targets
include make/Makefile.models
include make/Makefile.nsh_script
include make/Makefile.metadata

.SILENT: help $(BUILD_DIR)/startup.nsh $(BUILD_DIR)/$(sku).metadata.xml

all: help

date = $(shell date '+%Y-%m-%d')

OUTPUT_DIR = $(subst $() $(),/,$(name))/$(target)/$(version)

$(OUTPUT_DIR):
	mkdir -p $@


ifeq ($(target),coreboot)

$(version).rom:
	sed -i 's/CONFIG_LOCALVERSION=.*/CONFIG_LOCALVERSION="$(version)"/' ../coreboot/configs/config.starlabs_$(model)
	make -C ../coreboot distclean
	make -C ../coreboot defconfig KBUILD_DEFCONFIG=configs/config.starlabs_$(model)
	make -C ../coreboot
	mv ../coreboot/build/coreboot.rom $@

# Just the binary
$(OUTPUT_DIR)/$(version).rom:			$(version).rom
	mv $(version).rom $@

else
$(OUTPUT_DIR)/$(version).rom:
	mv $(version).rom $@
endif

$(OUTPUT_DIR)/$(version).cap:			$(subst $() $(),/,$(name))/$(target)-flashrom/$(version)/$(version).rom
	./binaries/header.py --guid $(uefi) --bin $< --cap $@

# Standard CAB
$(OUTPUT_DIR)/$(sku).$(target).metainfo.xml:	$(OUTPUT_DIR)
	printf '$(metadata)' > $@

$(OUTPUT_DIR)/$(target)-$(sku).cab:		$(OUTPUT_DIR)/$(sku).$(target).metainfo.xml	\
						$(OUTPUT_DIR)/$(version).$(file_type)
	gcab -cn $@ $^

# EFI Shell
$(OUTPUT_DIR)/startup.nsh:			$(OUTPUT_DIR)
	printf '$(nsh_script)' > $@

$(OUTPUT_DIR)/efi-$(sku).zip:			$(OUTPUT_DIR)/startup.nsh			\
						$(OUTPUT_DIR)/$(version).rom			\
						binaries/$(nsh_tool).efi
	zip -rj $@ $^


# Release notes
$(OUTPUT_DIR)/release_notes.md:			$(OUTPUT_DIR)
	nano $(OUTPUT_DIR)/release_notes.md

meta_release_notes = $(shell while IFS= read -r line; do					\
	if echo "$$line" | grep -q '^[*]'; then							\
		printf '\\t\\t\\t\\t\\t\\t<li>%s</li>\\n' "$${line#* }";			\
	elif [ -n "$$line" ]; then								\
		printf '\\t\\t\\t\\t\\t\\t<p>%s</p>\\n\\t\\t\\t\\t\\t\\t<ul>\\n' "$$line";	\
	else											\
		printf '\\t\\t\\t\\t\\t\\t</ul>\\n\\n\\n';					\
	fi;											\
	done < $(OUTPUT_DIR)/release_notes.md)


nsh_release_notes = $(shell while IFS= read -r line; do			\
		printf 'echo "%s"\\n' "$$line";				\
		done <$(OUTPUT_DIR)/release_notes.md)

readme_release_notes = $(shell while IFS= read -r line; do		\
		printf '>     %s\\n' "$$line";				\
		done <$(OUTPUT_DIR)/release_notes.md)

link = https://github.com/StarLabsLtd/firmware/raw/master/$(OUTPUT_DIR)


push_to_git:
	printf "\n#### $(target): [$(version)]($(link)/$(target_link)) $(date)\n" >> $(subst $() $(),/,$(name))/README.md
	printf '$(readme_release_notes)\n' >> $(subst $() $(),/,$(name))/README.md
	git add $(OUTPUT_DIR) $(subst $() $(),/,$(name))/README.md
	git commit -m "Added $(name) $(target) $(version)" -m "$(readme_release_notes)"
#	git push

DEPENDENCIES = 				\
	$(OUTPUT_DIR)			\
	$(OUTPUT_DIR)/release_notes.md	\
	$(OUTPUT_DIR)/$(version).$(file_type)

# Master recipes to be called
ami-flashrom:					$(DEPENDENCIES)				\
						$(OUTPUT_DIR)/efi-$(sku).zip		\
						$(OUTPUT_DIR)/$(target)-$(sku).cab

	$(MAKE) target_link="$(link)/$(version).$(file_type)" push_to_git

ami:						$(DEPENDENCIES)				\
						$(OUTPUT_DIR)/$(target)-$(sku).cab

	$(MAKE) target_link="$(link)/$(version).$(file_type)" push_to_git

coreboot: 					$(DEPENDENCIES)				\
						$(OUTPUT_DIR)/$(target)-$(sku).cab

	$(MAKE) target_link="$(link)/$(version).$(file_type)" push_to_git

ite:						$(DEPENDENCIES)				\
						$(OUTPUT_DIR)/efi-$(sku).zip

	$(MAKE) target_link="$(link)/$(version).$(file_type)" push_to_git

help:
	printf "Star Labs Firmware\n\n"
	printf "Usage\n"
	printf "\ntarget:\n"
	printf "%-25s %s\n"	"ami"			"Create an AMI UEFI Capsule cabinet"
	printf "%-25s %s\n"	"ami-flashrom"		"Create an AMI flashrom cabinet"
	printf "%-25s %s\n"	"coreboot"		"Create an coreboot flashrom cabinet"
	printf "%-25s %s\n"	"ite"			"Create an ITE superio cabinet"

	printf "\nmodel:\n"
	printf "%-25s %s\n"	"lite_apl"		"StarLite Mk II"
	printf "%-25s %s\n"	"lite_glk"		"StarLite Mk III"
	printf "%-25s %s\n"	"lite_glkr"		"StarLite Mk IV"
	printf "%-25s %s\n"	"labtop_kbl"		"StarLabTop Mk III"
	printf "%-25s %s\n" 	"labtop_cml"		"StarLabTop Mk IV"
	printf "%-25s %s\n"	"starbook_tgl"		"StarBook Mk V"
	printf "%-25s %s\n"	"starbook_adl"		"StarBook Mk VI - Intel"
	printf "%-25s %s\n"	"starbook_cezanne"	"StarBook Mk VI - AMD"
	printf "%-25s %s\n"	"byte_cezane"		"Byte Mk I"

	printf "\nversion:\n"
	printf "%-25s %s\n"	"pair"			"1.00"
	printf "%-25s %s\n"	"triplet"		"1.0.0"

	printf "\nExample usage:\n"
	printf "make coreboot target=coreboot model=starbook_adl version=8.18\n\n"

.PHONY: help ite coreboot ami ami-flashrom release-notes
