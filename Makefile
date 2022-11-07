## SPDX-License-Identifier: GPL-2.0-only

export SHELL := env bash

.SILENT: help $(BUILD_DIR)/startup.nsh $(BUILD_DIR)/$(sku).metadata.xml

all: help


date		= $(shell date '+%Y-%m-%d')

# Defaults for newer models
ite-tool	= ifu
ite-switch	= 128

ifeq ($(model),lite_apl)
name		= StarLite MkII
sku		= I2
# GUIDs
hwid		= 80f1fd54-f581-571f-90e6-00bf8a67f627
uefi		= 797f8bae-0ea2-4c0f-8a30-7d10ccfacbc0
superio1	= 0aa07091-dc02-5e62-a0cd-9d3880721b64
superio2	= f90a3e8e-af9b-5023-8804-a7faf809e0b1
ami		= 0676539d-150f-5f07-89b9-fe0afd98c44e
# ITE opts
ite_tool	= eFuitX64
ite_selector	= /u
ite_switch	= /faildelay
# AMI opts
ami_switch	= /P /N

else ifeq ($($model),lite_glk)
name		= StarLite MkIII
sku		= I3
shell		= /P /N
hwid		= d5521faa-c50b-5d64-971d-8fd400030c51
uefi		= d9d7b13b-e4db-4f91-8bf6-8952a9caa82a
superio1	= 0aa07091-dc02-5e62-a0cd-9d3880721b64
superio2	= b0e3a8ac-24ce-55e3-8aad-2261f1f4fa08
ami		= ec375a72-9ed9-5a21-b1da-5e7f00dcada1
coreboot	= 3d2f164a-8818-58fd-a082-6c60a67e21a6

ite-tool	= eFuitX64
ite-selector	= /u
ite-switch	= /faildelay
else ifeq ($($model), lite_gkr)
name		= StarLite MkIV
sku		= I4
shell		= /P /N
hwid		= 0fc25c8c-ffa8-54ad-a216-d13cfe75bee4
uefi		= b1ff7b4d-8b6a-4f50-a047-cddfdb75fa28
ami		= 32edd806-13a0-5b0f-a8e9-656a0e147369
coreboot	= 5dc1dd5b-761e-5146-8ac2-1fdd8445f2ff
else ifeq ($(model),labtop_kbl)
name		= LabTop Mk III
sku		= L3
shell		= /P /N /B /L
hwid		= 013b60e5-1023-5bee-8ae5-14cae21377b7
hwid2		= 8f8ca82b-30e1-5907-bc9d-4257a49898d4
uefi		= 8265d473-a6c2-42b4-897b-bc220faa2d32
superio1	= 0aa07091-dc02-5e62-a0cd-9d3880721b64
superio2	= f90a3e8e-af9b-5023-8804-a7faf809e0b1
ami		= a20caf4c-3ed8-531c-b59a-eb079ab5e65e
coreboot	= d33219e2-b84c-53a8-a624-27af9752dba6

ite-tool	= eFuitX64
ite-selector	= /u
ite-switch	= /faildelay
else ifeq ($(model),labtop_cml)
name		= LabTop MkIV
sku		= L4
shell		= /P /N /B /L
hwid		= baf1d04e-fd16-5e6a-93cc-1c23d171f879
uefi		= 502bff68-b8db-4b01-86ef-ab65f6502a77
superio1	= 0aa07091-dc02-5e62-a0cd-9d3880721b64
superio2	= 1e8bc0cc-eee2-5e30-ab4f-1ff923118f01
ami		= cc6437bf-0955-5c03-84a6-8b87c7a7c244
coreboot	= 0ee5867c-93f0-5fb4-adf1-9d686ea1183a

ite-tool	= eFuitX64
ite-selector	= /u
ite-switch	= /faildelay
else ifeq ($(model),starbook_tgl)
name		= StarBook MkV
sku		= B5
shell		= /P /N /B /L
hwid		= 85aba599-addd-5985-a2e8-eddb41c61ba3
uefi		= e27d9e98-cbb2-4975-a8f8-261de2adde05
superio1	= d83a4cd0-fce6-58a8-93c7-bcee89b41dcf
superio2	= 049060b5-5010-5ca0-8002-07923951d15e
ami		= 612d0af2-6b4b-5d1a-bd63-433022fdaefe
coreboot	= 54c96fef-31e7-5011-a3ff-ea8e855d9acd
else ifeq ($(model),starbook_adl)
name		= StarBook MkVI-Intel
sku		= B6-I
shell		= /P /N /B /L
hwid		= 5c917039-d938-5c9a-b22a-9c392b1534f3
uefi		= 02e64049-abcc-44a5-af9a-fafc390dd844
superio1	= d83a4cd0-fce6-58a8-93c7-bcee89b41dcf
ami		= 1292e166-a66f-5e11-b2bb-53265a8f53d9
coreboot	= 8c994a92-7ef8-5d68-80b5-99ead7cf4686
else ifeq ($(model),starbook_cezanne)
name		= StarBook MkVI-AMD
sku		= B6-A
shell		= /P /B /N /R /K /X /L
hwid		= b39593ad-7522-52a5-a4ab-1b2ca2153956
uefi		= 5a29ddbb-11dd-476d-a641-a45c1db63d5c
superio1	= d83a4cd0-fce6-58a8-93c7-bcee89b41dcf
ami		= 4c7c8bc5-475c-5384-b602-78c9d4771b5d
coreboot	= ""
else ifeq ($(model),byte_cezanne)
name		= Byte MkI
sku		= Y1
shell		= /P /B /N /R /K /X /L
hwid		= 79a64046-5643-59c4-91d0-e68b33db5829
uefi		= c24f6311-d2de-49e6-aba0-b8e971b1a425
superio1	= d83a4cd0-fce6-58a8-93c7-bcee89b41dcf
ami		= ""
coreboot=""
endif

nsh_script = cls\n
nsh_script += set payload $(version).bin\n
nsh_script += \n
#nsh_script += echo "*******************************************************************"\n
#nsh_script += echo ".d8888. d888888b.d8b.  d8888b.   db       .d8b.  d8888b. .d8888. "\n
#nsh_script += echo "88\'  YP \`~~88~~\' d8\' \`8b 88  \`8D   88      d8\' \`8b 88  \`8D 88\'  YP "\n
#nsh_script += echo "\`8bo.      88    88ooo88 88oobY\'   88      88ooo88 88oooY\' \`8bo.   "\n
#nsh_script += echo "  \`Y8b.    88    88~~~88 88\`8b     88      88~~~88 88~~~b.   \`Y8b. "\n
#nsh_script += echo "db   8D    88    88   88 88 \`88.   88booo. 88   88 88   8D db   8D "\n
#nsh_script += echo "\`8888Y\'    YP    YP   YP 88   YD   Y88888P YP   YP Y8888P\' \`8888Y\' "\n
# nsh_script += echo "*******************************************************************"\n
# nsh_script += echo "********************* BIOS & Firmware Update **********************"\n
# nsh_script += echo "*******************************************************************"\n
nsh_script += echo \" \"\n
nsh_script += echo "This update is for the $(name). Installing on any other laptop will cause it not to start."\n
nsh_script += echo " "\n
nsh_script += echo "Press Enter to update firmware or press Q to quit."\n
nsh_script += pause\n
nsh_script += echo \"This update contains the following changes:\"\n
nsh_script += $$ern\n
nsh_script += for %%a run (0 10)\n
nsh_script += 	\tif exist fs%%a:$(nsh_tool).efi then\n
nsh_script += 		\t\tfs%%a:\n
nsh_script += 		\t\t$(nsh_tool) $(nsh_selector) %%payload%% $(nsh_switch)\n
nsh_script += 		\t\treset\n
nsh_script += 	\tendif\n
nsh_script += endfor\n

metadata += <\041-- Copyright 2022 Star Labs Online Limited -->\n
metadata += <component type=\"firmware\">\n
metadata += 	\t<id>com.starlabs.$(sku).$(lastword $(subst ., ,$(meta_protocol)))</id>\n
metadata += 	\t<name>$(name) $(lastword $(subst ., ,$(meta_protocol)))</name>\n
metadata += 	\t<summary>$(lastword $(subst ., ,$(meta_protocol))) firmware for $(name)</summary>\n
ifeq ($(meta_branch),true)
metadata += 	\t<branch>coreboot</branch>\n
endif
metadata += 	\t<description>\n
metadata += 		\t\t<p>Updating the $(lastword $(subst ., ,$(meta_protocol))) firmware makes your computer more reliable and can add new features.</p>\n
metadata += 	\t</description>\n
metadata += 	\t<provides>\n
metadata += 		\t\t<firmware type=\"flashed\">$(meta_guid_1)</firmware>\n
ifneq ($(meta_guid_2),'')
metadata += 		\t\t<firmware type=\"flashed\">$(meta_guid_2)</firmware>\n
endif
metadata += 	\t</provides>\n
metadata += 	\t<requires>\n
metadata += 		\t\t<id compare=\"ge\" version=\"$(meta_version)\">org.freedesktop.fwupd</id>\n
metadata += 		\t\t<hardware>$(hwid)</hardware>\n
ifeq ($(meta_branch),true)
metadata += 		\t\t<client>switch-branch</client>\n
endif
metadata += 	\t</requires>\n
metadata += 	\t<url type=\"homepage\">https://starlabs.systems</url>\n
metadata += 	\t<metadata_license>CC0-1.0</metadata_license>\n
metadata += 	\t<project_license>proprietary</project_license>\n
metadata += 	\t<developer_name>Star Labs</developer_name>\n
metadata += 	\t<custom>\n
metadata += 		\t\t<value key=\"LVFS::UpdateProtocol\">$(meta_protocol)</value>\n
metadata += 		\t\t<value key=\"LVFS::VersionFormat\">$(meta_format)</value>\n
metadata += 	\t</custom>\n
metadata += 	\t<categories>\n
metadata += 		\t\t<category>X-Device</category>\n
metadata += 	\t</categories>\n
metadata += 	\t<releases>\n
metadata += 		\t\t<release urgency=\"medium\" version=\"$(version)\" date=\"$(date)\">\n
metadata += 			\t\t\t<checksum filename=\"$(version).$(file_type)\" target=\"content\"/>\n
metadata += 			\t\t\t<description>\n
metadata += 				\t\t\t\t<p>This stable release includes the following features:</p>\n
metadata += 				\t\t\t\t<ul>\n
metadata += 					$(crn)\n
metadata += 				\t\t\t\t</ul>\n
metadata += 			\t\t\t</description>\n
metadata += 		\t\t</release>\n
metadata += 	\t</releases>\n
metadata += </component>\n


BUILD_DIR	= build
OUTPUT_DIR	= test/$(subst $() $(),/,$(name))/$(target)

$(OUTPUT_DIR):
	mkdir -p $@

$(BUILD_DIR):
	mkdir -p $@

# Standard CAB
$(BUILD_DIR)/$(sku).metadata.xml:	$(BUILD_DIR)
	printf '$(metadata)' > $@

$(OUTPUT_DIR)/$(target)-$(sku).cab:	$(BUILD_DIR)/$(sku).metainfo.xml \
					$(version).$(file_type)
	gcab -cn $@ $^

# Just the binary
$(OUTPUT_DIR)/$(version).$(file_type):	$(version).$(file_type)
	mv $< $@

# EFI Shell
$(BUILD_DIR)/startup.nsh:		$(BUILD_DIR)
	printf '$(nsh_script)' > $@

$(OUTPUT_DIR)/efi-$(sku).zip:		$(BUILD_DIR)/startup.nsh \
					$(version).$(file_type) \
					binaries/$(nsh_tool).efi
	zip -rj $@ $^

# Master recipes to be called
#ami :					\ # Uefi Capsule
#					meta_version	= 1.3.9 \
#					meta_protocol	= org.uefi.capsule \
#					meta_format	= triplet \
#					meta_guid_1	= $(uefi) \
#					meta_extension	= cap \
#					\ # Efi Shell
#					$(nsh_tool)	= AfuEfix64 \
#					$(nsh_switch)	= $(ami_switch) \
#					\
#					./header.py --guid "$uefi" --bin "$version.rom" --cap "$version.cap"
#					# CAB: flashrom
#					ClientVersion	="1.7.0"
#					UpdateProtocol	="org.flashrom"
#					VersionFormat	="triplet"
#					Extension	="bin"
#					PrimaryGuid	="$coreboot"

ami:					$(OUTPUT_DIR)/AMI/efi-$(sku).zip \
					$(OUTPUT_DIR)/AMI/flashrom-$(sku).cab \
					$(OUTPUT_DIR)/AMI/uefi-$(sku).cab \
					$(OUTPUT_DIR)/AMI/$(version).bin \
					$(OUTPUT_DIR)/AMI/$(version).rom

coreboot:				target		= coreboot
coreboot:				meta_version	= 1.7.7
coreboot:				meta_protocol	= org.flashrom
coreboot:				meta_format	= pair
coreboot:				meta_branch	= true
coreboot:				meta_guid_1	= $(coreboot)
coreboot:				meta_guid_2	= $(ami)
coreboot:				file_type	= rom

coreboot: 				$(OUTPUT_DIR) \
					$(OUTPUT_DIR)/$(target)-$(sku).cab \
					$(OUTPUT_DIR)/$(version).$(file_type)

ite:					target		= ite
ite:					meta_version	= 1.7.0
ite:					meta_protocol	= tw.com.ite.superio
ite:					meta_format	= pair
ite:					meta_branch	= false
ite:					meta_guid_1	= $(superio1)
ite:					meta_guid_2	= $(superio2)
ite:					file_type	= bin

ite:					nsh_tool	= $(ite_tool)
ite:					nsh_selector	= $(ite_selector)
ite:					nsh_switch	= $(ite_switch)

ite:					$(OUTPUT_DIR)
	echo $(CONFIG_ITE)
#					$(OUTPUT_DIR)/$(version).rom \
#					$(OUTPUT_DIR)/efi-$(sku).zip \
#					$(OUTPUT_DIR)/ite-$(sku).cab

clean:
	rm -rf build

help:
	printf \
	"Please add a target:\n"

.phony: help ite
