# Star Labs [Firmware](https://github.com/StarLabsLtd/firmware/) ![alt text](https://cdn.shopify.com/s/files/1/2059/5897/files/Star_50x.png?v=1513954416 "Star Labs Systems")
---
## **StarLite**[MkIV](https://github.com/StarLabsLtd/firmware/tree/master/StarLite/MkIV)
#### coreboot: [4.16](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/4.16/efi-I4.zip) (2022-05-24)
>     New build of 4.16 that includes the following fixes/changes:
>     * USB 3.0 multiplexor wont initialise for certain devices
>     * Use standardised PCI identifier for HD Audio
>     * Disable DPTF device
>     * Disable SATA port 2
>     * Enable SSDT for fast SPI controller
>     * Adjust TCC offset to 10 degrees

#### coreboot: [4.16](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/4.16/efi-I4.zip) (2022-05-11)
>     Initial release of coreboot for the Lite Mk IV
>     Uses 7 fewer blobs than AMI
>     Reduced power consumption
>     Configurable TDP up to 20W
>     Based on coreboot 4.16

#### AMI: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/AMI/1.0.0/efi-I4.zip) (2022-05-03)
>     Initial release of AMI Aptio V for the Lite Mk IV
>     Based on AMI 5.29
>     Microcode 0x1b

---
## **StarBook**[MkV](https://github.com/StarLabsLtd/firmware/tree/master/StarBook/MkV)
#### coreboot: [7.96](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7.96/efi-B5.zip) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime

#### coreboot: [7.95](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7.95/efi-B5.zip) (2022-03-07)
>     Pull SSD Pin to low when entering S3 - saves power when suspended
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions

#### coreboot: [7.91](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7.91/efi-B5.zip) (2022-01-06)
>     Update GPIOs
>     Update CNVi GPIOs
>     Update trackpad GPIO
>     Enable TPM_IRQ GPIO
>     Don't configure ESPI GPIOs
>     Disconnect unused GPIO's
>     Add comments for GPIOs
>     Remove display from devicetree
>     Apply EC settings when suspending
>     Unify EC and CMOS names
>     Adjust KBL configuration
>     Enable I2C4
>     Convert EC_GPE_SCI to Kconfig

#### ITE128: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.03/efi-B5.zip) (2021-12-22)
>     Fixed issue where keyboard backlight wouldn't turn off when entering S3 or turning off

#### ITE128: [1.02](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.02/efi-B5.zip) (2021-12-10)
>     Update Normal and Quiet fan curves to delay start until 65 degree's. Performance mode is unchanged.

#### AMI: [2](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/AMI/2/efi-B5.zip) (2021-11-08)
>     Updated Verb Table
>     New option to set the maximum battery charge level
>     Fixed ACPI error
>     Remember Fn Lock state between reboot

#### coreboot: [7](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7/efi-B5.zip) (2021-10-08)
>     Initial release firmware for the StarBook Mk V
>      
>     coreboot:			4.14
>     CSME:				15.0.30.1776
>     Microcode:			0x88
>     FSP:				A.0.51.31
>      
>     Configurable options:
>     Hyper-Threading:		Enable / Disable
>     Intel VT-d:			Enable / Disable
>     Power Profile:			Power Saving / Balanced / Performance
>     ME State:			Enable / Disable
>     Wireless:			Enable / Disable
>     Microphone:			Enable / Disable
>     Clock Gating:			Enable / Disable
>     Keyboard Backlight Timeout:	30 seconds / 1 minute / 3 minutes / 5 minutes / Never
>     Fn Ctrl Swap:			Enable / Disable
>      
>     Power Profiles are as below:
>     Performance:			PL1:         35W
>     				PL2:         64W
>     				TurboBoost:  Enabled
>     Balanced:			PL1:         15W
>     				PL2:         35W
>     				TurboBoost:  Enabled
>     Power Saving:			PL1:         15W
>     				PL2:         15W
>     				TurboBoost:  Disabled

#### ITE128: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.01/efi-B5.zip) (2021-10-08)
>     Added support to select maximum charge percentage
>     	

#### ITE128: [1.00](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.00/efi-B5.zip) (2021-10-08)
>     Initial release firmware for the StarBook Mk V

#### AMI: [1](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/AMI/1/efi-B5.zip) (2021-09-27)
>     Initial release firmware for the StarBook Mk V
>     
>     AMI:				5.29
>     CMSE:				15.0.30.1776
>     Microcode:			0x88
>     FSP:				A.0.51.31
>     
>     Configurable options:
>     Hyper-Threading:		Enable / Disable
>     Intel VT-d:			Enable / Disable
>     Power Profile:			Power Saving / Balanced / Performance
>     ME State:			Enable / Disable
>     Wireless:			Enable / Disable
>     Microphone:			Enable / Disable
>     Clock Gating:			Enable / Disable
>     Keyboard Backlight Timeout:	30 seconds / 1 minute / 3 minutes / 5 minutes / Never
>     Fn Ctrl Swap:			Enable / Disable
>     
>     Power Profiles are as below:
>     Performance:			PL1:		35W
>     				PL2:		64W
>     				TurboBoost:	Enabled
>     Balanced:			PL1:		15W
>     				PL2:		35W
>     				TurboBoost:	Enabled
>     Power Saving:			PL1:		15W
>     				PL2:		15W
>     				TurboBoost:	Disabled

---
## **StarLite**[MkIII](https://github.com/StarLabsLtd/firmware/tree/master/StarLite/MkIII)
#### ITE: [1.13](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.13/efi-I3.zip) (2022-05-20)
>     Bind F10 function key to Q events Q60 and Q61. Event is alternated based on
>     the value of 0x14, 0x11 will send Q60 and 0x22 will send Q61. This corresonds
>     to CB:64465 to pull GPIO_177 to low and disable the trackpad.

#### coreboot: [4.16](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/coreboot/4.16/efi-I3.zip) (2022-05-11)
>     Initial release of coreboot for the Lite Mk III
>     Uses 7 fewer blobs than AMI
>     Reduced power consumption
>     Configurable TDP up to 20W
>     Based on coreboot 4.16

#### AMI: [2.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/2.1.0/efi-I3.zip) (2022-02-18)
>     Updated SGX allocations
>     Updated Microcode
>     Improved Charger configuration
>     Updated SGX configuration
>     Improved DPTF configuration
>     Enabled dito
>     Updated CSE

#### AMI: [64.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/64.0.0/efi-I3.zip) (2021-12-22)
>     Release version 64 which allows for IWFI rollback.

#### AMI: [2.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/2.1.0/efi-I3.zip) (2021-09-22)
>     Updated SGX allocations
>     Updated Microcode
>     Improved Charger configuration
>     Updated SGX configuration
>     Improved DPTF configuration
>     Enabled dito
>     Updated CSE

#### ITE: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.03/efi-I3.zip) (2021-09-22)
>     Modified charging frequency to reduce noise

#### AMI: [1.4.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.4.0/efi-I3.zip) (2021-09-22)
>     Updated DPTF

#### AMI: [1.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.3.0/efi-I3.zip) (2021-09-22)
>     Updated Verb Table
>     Updated SSD initialisation

#### ITE: [1.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.02/efi-I3.zip) (2021-09-22)
>     Improved compatibility with third-party chargers
>     Fixed keyboard backlight control
>     Adjusted trackpad handler

#### ITE: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.01/efi-I3.zip) (2021-09-22)
>     Fixed keyboard backlight timeout

#### AMI: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.2.0/efi-I3.zip) (2021-09-22)
>     Updated Verb Table
>     Optimised Power Management
>     Removed PL1 Limitation
>     Updated Secure Boot Keys

#### AMI: [1.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.1.0/efi-I3.zip) (2021-09-22)
>     Updated wireless configuration

#### ITE: [1.00](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.00/efi-I3.zip) (2021-09-22)
>     Initial release firmware for the StarLite Mk III

#### AMI: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.0.0/efi-I3.zip) (2021-09-22)
>     Initial release firmware for the StarLite Mk III

---
## **StarLabTop**[MkIV](https://github.com/StarLabsLtd/firmware/tree/master/StarLabTop/MkIV)
#### coreboot: [7.96](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.96/efi-L4.zip) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime

#### coreboot: [7.95](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.95/efi-L4.zip) (2022-03-07)
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions

#### coreboot: [7.92](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.92/efi-L4.zip) (2022-03-02)
>     Rebase on coreboot 4.16
>     Fixed issue where battery would report to high of a capacity
>     Decreased power consumption

#### coreboot: [7.10](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.10/efi-L4.zip) (2022-01-05)
>     Fix SMI IRQ

#### coreboot: [7.9](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.9/efi-L4.zip) (2022-01-05)
>     Fixed EC GPE

#### coreboot: [7.8](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.8/efi-L4.zip) (2021-12-22)
>     Rebase on upstream (4.15)
>     Remove _BCL from acpigen
>     Enable I2C4
>     Fix EC settings not being applied
>     Update verb table
>     Enable PTT
>     Disconnect unused GPIOs

#### coreboot: [8](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8/efi-L4.zip) (2021-12-12)
>     Rebase on coreboot 4.15
>     Fixed issue where EC settings weren't changed
>     Fixed ACPI bug _BCL not hooked up
>     Store serial number in CMOS
>     Updated GPIOs
>     Updated hardware EQ

#### coreboot: [7](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7/efi-L4.zip) (2021-10-07)
>     Rebase on upstream
>     Fixed bug on upgrading to 6 when wireless, webcam and microphone could be disabled
>     Fixed second ACPI backlight control
>     Support to control fan and max charge level (Requires EC support)
>     Updated verb table to improve microphone input and speakers


#### AMI: [2.6.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.6.0/efi-L4.zip) (2021-09-30)
>     Add setup item to change maximum charge level

#### ITE: [1.07](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.07/efi-L4.zip) (2021-09-29)
>     Add support to set the maximum charge level of the battery
>     

#### AMI: [2.5.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.5.0/efi-L4.zip) (2021-09-28)
>     Updated version information
>     Updated verb table EQ

#### ITE: [1.06](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.06/efi-L4.zip) (2021-09-22)
>     Add Q Event for Touchpad State which allows it to be saved on reboot

#### ITE: [1.05](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.05/efi-L4.zip) (2021-09-22)
>     Updated power configuration
>     Use battery power when charger doesnt supply enough

#### coreboot: [6](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/6/efi-L4.zip) (2021-09-22)
>     Rebase on upstream
>     New VBT's that prioritise performance over power consumption
>     New BGRT logo
>     Updated microcode
>     Updated FSP
>     Use open-source LIBGFXINIT
>     Option to disable or enable Wireless
>     Option to disable or enable Webcam
>     Option to disable or enable Microphone
>     Option to disable or enable Hyper-Threading
>     Option to disable or enable Intel VT-d
>     Option to disable or enable Clock Gating
>     Option to adjust the Thermal Design Power (15W / 20W / 25W)
>     Q-Events for specific models
>     Fixed bug where Qubes wouldn't boot (Requires disabling Clock Gating)
>     Fixed bug where Function Lock state was lost

#### coreboot: [5](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/5/efi-L4.zip) (2021-09-22)
>     Rebased on upstream
>     Added CMOS option to enable Intel ME
>     Fixed bug where ECOS wasnt stored on S3
>     Improved battery ACPI
>     Removed delay for charger connect/disconnect

#### AMI: [2.4.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.4.0/efi-L4.zip) (2021-09-22)
>     Fixed bug where Windows would output sound to both headphones and speakers

#### coreboot: [4](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/4/efi-L4.zip) (2021-09-22)
>     Rebase on upstream
>     Changed Tianocore to upp_next branch
>     Configured CMOS to allow settings to be changed with coreboot-configurator application
>     Disabled VBR
>     Fixed bug where Fn Lock state lost on reboot
>     Enabled EVAC register in EC asl

#### coreboot: [3](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/3/efi-L4.zip) (2021-09-22)
>     Updated VBT ID's
>     Removed unused ACPI
>     Rebase on upstream
>     Updated FSP configuration
>     Disabled S4

#### coreboot: [2](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/2/efi-L4.zip) (2021-09-22)
>     Rebase on upstream
>     Changed to ASL v2 syntax

#### coreboot: [1](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/1/efi-L4.zip) (2021-09-22)
>     Rebase on upstream
>     Reverted to FSP
>     Updated BGRT Logo

#### AMI: [2.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.3.0/efi-L4.zip) (2021-09-22)
>     Added Windows Compliant Codec Header
>     Update Headset Mic Detection

#### AMI: [2.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.2.0/efi-L4.zip) (2021-09-22)
>     Updated Microcode
>     Added option to disable BLE
>     Updated Verb Table

#### ITE: [1.04](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.04/efi-L4.zip) (2021-09-22)
>     Function lock state remembered between reboots

#### AMI: [2.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.1.0/efi-L4.zip) (2021-09-22)
>     Updated verb table to enable headphone jack detection

#### AMI: [2.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.0.0/efi-L4.zip) (2021-09-22)
>     Updated verb table for headphone detection

#### AMI: [1.8.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.8.0/efi-L4.zip) (2021-09-22)
>     Updated verb table for headphone detection

#### AMI: [1.6.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.6.0/efi-L4.zip) (2021-09-22)
>     Changed default brightness to 100
>     Updated Secure Boot Keys
>     Improved support for SATA SSD's
>     Improved charging speed
>     Improved Type-C detection

#### ITE: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.03/efi-L4.zip) (2021-09-22)
>     Updated fan curve

#### ITE: [1.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.02/efi-L4.zip) (2021-09-22)
>     Updated fan curve

#### ITE: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.01/efi-L4.zip) (2021-09-22)
>     Updated fan curve
>     Updated Fn binding at post

#### AMI: [1.4.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.4.0/efi-L4.zip) (2021-09-22)
>     Adjusted audio subsystem

#### AMI: [1.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.3.0/efi-L4.zip) (2021-09-22)
>     Improved WiFi configuration
>     Improved audio jack detection

#### AMI: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.2.0/efi-L4.zip) (2021-09-22)
>     Fixed bug where headphones not detected

#### ITE: [1.00](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.00/efi-L4.zip) (2021-09-22)
>     Initial release firmware for the StarLabTop Mk IV

#### AMI: [1.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.1.0/efi-L4.zip) (2021-09-22)
>     Initial release firmware for the StarLabTop Mk IV

---
## **StarLite**[MkII](https://github.com/StarLabsLtd/firmware/tree/master/StarLite/MkII)
#### AMI: [1.5.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/AMI/1.5.0/efi-I2.zip) (2021-10-19)
>     Updated DPTF
>     Updated Verb Table
>     Enabled BLE

#### ITE: [14.08](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/ITE/14.08/efi-I2.zip) (2021-09-22)
>     Fixed power drain when suspended

#### AMI: [1.5.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/AMI/1.5.0/efi-I2.zip) (2021-09-22)
>     Updated DPTF
>     Updated Verb Table
>     Enabled BLE

#### AMI: [1.4.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/AMI/1.4.0/efi-I2.zip) (2021-09-22)
>     Updated PK
>     Enabled BLE
>     Updated Power Management for better battery retention whilst sleeping and suspended
>     Updated ROM layout

#### AMI: [1.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/AMI/1.3.0/efi-I2.zip) (2021-09-22)
>     Updated Microcode to 40
>     Updated PK
>     Enabled BLE
>     Updated Power Management for better battery retention whilst sleeping and suspended

#### AMI: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/AMI/1.2.0/efi-I2.zip) (2021-09-22)
>     Staged option to reverse Ctrl + Fn Keys
>     Updated Microcod
>     Fixed pop sound from speakers
>     Improvements to speakers
>     Improvements processor power management
>     Improvements to trackpad accuracy
>     Improvements to power management
>     Fixed issue that prevent boot order being changed from OS
>     Adjusting timing of power button
>     Added BIOS option to set Keyboard Backlight Timeout
>     Added BIOS option to set VRAM Aperture
>     Fixed issue with Fn Lock state not being remembering between reboots
>     Added option to disable wireless
>     Added option to disable webcam
>     Added power-save mode

#### ITE: [14.07](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/ITE/14.07/efi-I2.zip) (2021-09-23)
>     Updated power configuration
>     Updated suspend configuration

#### ITE: [14.06](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkII/ITE/14.06/efi-I2.zip) (2021-09-23)
>     Initial release firmware for the StarLite Mk II

---
## **StarLabTop**[MkIII](https://github.com/StarLabsLtd/firmware/tree/master/StarLabTop/MkIII)
#### coreboot: [7.98](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/7.98/efi-L3.zip) (2022-04-27)
>     Fixed issue with sound not working
>     Rebase on upstream

#### coreboot: [7.96](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/7.96/efi-L3.zip) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions
>     Disconnect unused GPIO's
>     Add comments for GPIOs
>     Remove display from devicetree

#### coreboot: [7](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/7/efi-L3.zip) (2021-10-07)
>     Rebase on upstream
>     Fixed bug on upgrading to 6 when wireless, webcam and microphone could be disabled
>     Fixed second ACPI backlight control
>     Support to control fan and max charge level (Requires EC support)
>     Updated verb table to improve microphone input and speakers

#### ITE: [3.12](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/ITE/3.12/efi-L3.zip) (2021-09-23)
>     New option to reverse Ctrl + Fn keys

#### ITE: [3.12](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/ITE/3.12/efi-L3.zip) (2021-09-23)
>     New option to reverse Ctrl + Fn keys

#### coreboot: [6](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/6/efi-L3.zip) (2021-09-22)
>     Rebase on upstream
>     New VBT's that prioritise performance over power consumption
>     New BGRT logo
>     Updated microcode
>     Updated FSP
>     Use open-source LIBGFXINIT
>     Option to disable or enable Wireless
>     Option to disable or enable Webcam
>     Option to disable or enable Microphone
>     Option to disable or enable Hyper-Threading
>     Option to disable or enable Intel VT-d
>     Option to disable or enable Clock Gating
>     Option to adjust the Thermal Design Power (15W / 20W / 25W)
>     Q-Events for specific models
>     Fixed bug where Qubes wouldn't boot (Requires disabling Clock Gating)
>     Fixed bug where Function Lock state was lost

#### coreboot: [5](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/5/efi-L3.zip) (2021-09-22)
>     Rebased on upstream
>     Added CMOS option to enable Intel ME
>     Fixed bug where ECOS wasn't stored on S3
>     Fixed bug where S3 wouldn't resume
>     Improved battery ACPI
>     Removed delay for charger connect/disconnect

#### coreboot: [4](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/4/efi-L3.zip) (2021-09-22)
>     Rebase on upstream
>     Changed Tianocore to upp_next branch
>     Configured CMOS to allow settings to be changed with coreboot-configurator application
>     Disabled VBR
>     Fixed bug where Fn Lock state lost on reboot
>     Enabled EVAC register in EC asl

#### coreboot: [3](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/3/efi-L3.zip) (2021-09-22)
>     Updated libgfxinit configuration
>     Rebase on upstream
>     Adjusted memory handling
>     Updated VBT ID's
>     Removed unused ACPI
>     Disabled S4

#### AMI: [2.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/AMI/2.0.0/efi-L3.zip) (2021-09-22)
>     Enabled BLE

#### AMI: [1.6.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/AMI/1.6.0/efi-L3.zip) (2021-09-22)
>     Updated Microcode to D6
>     Updated CSME to 11.8.79.3772
>     Added System PK
>     Fixed adjustable keyboard backlight
>     Improved ACPI support
>     Improved SSD configuration
>     New option to reverse Ctrl + Fn keys
>     Added support for PXE Boot
>     Added performance mode selector
>     Added option to disable Hyper-threading
>     Changed default CSM support to Disabled
>     Changed default Intel ME state to Disabled
>     Added new temperature thresholds
>     Removed redundant modules
>     Removed redundant AMI PK Keys

---
coreboot source code can be found [here](https://github.com/coreboot/coreboot).
---
# [© Star Labs®](https://starlabs.systems) / All Rights Reserved.
Any issues or questions, please contact us at [support@starlabs.systems](mailto:supportstarlabs.systems)

View our full range of Linux laptops at: [https://starlabs.systems](https://starlabs.systems)
