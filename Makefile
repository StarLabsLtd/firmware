## SPDX-License-Identifier: GPL-2.0-only

export SHELL := env bash

include make/Makefile.targets
include make/Makefile.models
include make/Makefile.nsh_script
include make/Makefile.metadata

.SILENT: help $(BUILD_DIR)/startup.nsh $(BUILD_DIR)/$(sku).metadata.xml

all: help


date = $(shell date '+%Y-%m-%d')

OUTPUT_DIR = test/$(subst $() $(),/,$(name))/$(target)/$(version)

$(version).$(file_type):
ifeq ($(target),coreboot)
	make -C ../coreboot distclean
	make -C ../coreboot defconfig KBUILD_DEFCONFIG=configs/config.starlabs_$(model)
	make -C ../coreboot
	cp ../coreboot/coreboot.rom $@
else ifeq ($(target),ami)
	./binaries/header.py --guid $(uefi) --bin $(version).rom --cap $@
	rm $(version).rom
else
	exit 0
endif

$(OUTPUT_DIR):
	mkdir -p $@

# Just the binary
$(OUTPUT_DIR)/$(version).$(file_type):		$(version).$(file_type)
	mv $< $@

# Standard CAB
$(OUTPUT_DIR)/$(sku).$(target).metainfo.xml:	$(OUTPUT_DIR)
	printf '$(metadata)' > $@

$(OUTPUT_DIR)/$(target)-$(sku).cab:		$(OUTPUT_DIR)/$(sku).$(target).metainfo.xml \
						$(OUTPUT_DIR)/$(version).$(file_type)
	gcab -cn $@ $^

# EFI Shell
$(OUTPUT_DIR)/startup.nsh:			$(OUTPUT_DIR)
	printf '$(nsh_script)' > $@

$(OUTPUT_DIR)/efi-$(sku).zip:			$(OUTPUT_DIR)/startup.nsh \
						$(OUTPUT_DIR)/$(version).$(file_type) \
						binaries/$(nsh_tool).efi
	zip -rj $@ $^


# Release notes
$(OUTPUT_DIR)/release_notes.md:			$(OUTPUT_DIR)
	nano $(OUTPUT_DIR)/release_notes.md

meta_release_notes = $(shell while IFS= read -r line; do \
		printf '\\t\\t\\t\\t\\t<li>%s</li>\\n' "$$line"; \
		done <$(OUTPUT_DIR)/release_notes.md)

nsh_release_notes = $(shell while IFS= read -r line; do \
		printf 'echo "%s"\\n' "$$line"; \
		done <$(OUTPUT_DIR)/release_notes.md)

readme_release_notes = $(shell while IFS= read -r line; do \
		printf '>     %s\\n' "$$line"; \
		done <$(OUTPUT_DIR)/release_notes.md)

link = https://github.com/StarLabsLtd/firmware/raw/master/$(OUTPUT_DIR)

# Master recipes to be called
ami-flashrom:					$(version).$(file_type) \
						$(OUTPUT_DIR) \
						$(OUTPUT_DIR)/release_notes.md \
						$(OUTPUT_DIR)/$(version).$(file_type) \
						$(OUTPUT_DIR)/$(target)-$(sku).cab
	printf "\#\#\#\# $(target): [$(version)]($(link)/$(version).$(file_type)) $(date)\n" >> test/$(subst $() $(),/,$(name))/README.md
	printf '$(readme_release_notes)' >> test/$(subst $() $(),/,$(name))/README.md
	git add $(OUTPUT_DIR) test/$(subst $() $(),/,$(name))/README.md
	git commit -m "Added $(name) $(target) $(version)"
	git push

ami:						$(version).$(file_type) \
						$(OUTPUT_DIR) \
						$(OUTPUT_DIR)/release_notes.md \
						$(OUTPUT_DIR)/$(version).$(file_type) \
						$(OUTPUT_DIR)/$(target)-$(sku).cab \
						$(OUTPUT_DIR)/efi-$(sku).zip
	printf "\#\#\#\# $(target): [$(version)]($(link)/efi-$(sku).zip) $(date)\n" >> test/$(subst $() $(),/,$(name))/README.md
	printf '$(readme_release_notes)' >> test/$(subst $() $(),/,$(name))/README.md
	git add $(OUTPUT_DIR) test/$(subst $() $(),/,$(name))/README.md
	git commit -m "Added $(name) $(target) $(version)"
	git push

coreboot: 					$(version).$(file_type) \
						$(OUTPUT_DIR) \
						$(OUTPUT_DIR)/release_notes.md \
						$(OUTPUT_DIR)/$(version).$(file_type) \
						$(OUTPUT_DIR)/$(target)-$(sku).cab
	printf "\#\#\#\# $(target): [$(version)]($(link)/$(target)-$(sku).cab) $(date)\n" >> test/$(subst $() $(),/,$(name))/README.md
	printf '$(readme_release_notes)' >> test/$(subst $() $(),/,$(name))/README.md
	git add $(OUTPUT_DIR) test/$(subst $() $(),/,$(name))/README.md
	git commit -m "Added $(name) $(target) $(version)"
	git push

ite:						$(version).$(file_type) \
						$(OUTPUT_DIR) \
						$(OUTPUT_DIR)/release_notes.md \
						$(OUTPUT_DIR)/$(version).$(file_type) \
						$(OUTPUT_DIR)/$(target)-$(sku).cab \
						$(OUTPUT_DIR)/efi-$(sku).zip
	printf "\#\#\#\# $(target): [$(version)]($(link)/efi-$(sku).zip) $(date)\n" >> test/$(subst $() $(),/,$(name))/README.md
	printf '$(readme_release_notes)' >> test/$(subst $() $(),/,$(name))/README.md
	git add $(OUTPUT_DIR) test/$(subst $() $(),/,$(name))/README.md
	git commit -m "Added $(name) $(target) $(version)"
	git push

clean:
	rm -rf build

help:
	printf \
	"Please add a target:\n"

.phony: help ite coreboot ami ami-flashrom release-notes
