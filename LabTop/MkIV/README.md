## **StarLabTop**[MkIV](https://github.com/StarLabsLtd/firmware/tree/master/StarLabTop/MkIV)

#### ITE: [1.00](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.00/efi-L4.zip) (2021-09-22)
>     Initial release firmware for the StarLabTop Mk IV

#### AMI: [1.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.1.0/efi-L4.zip) (2021-09-22)
>     Initial release firmware for the StarLabTop Mk IV

#### AMI: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.2.0/efi-L4.zip) (2021-09-22)
>     Fixed bug where headphones not detected

#### AMI: [1.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.3.0/efi-L4.zip) (2021-09-22)
>     Improved WiFi configuration
>     Improved audio jack detection

#### AMI: [1.4.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.4.0/efi-L4.zip) (2021-09-22)
>     Adjusted audio subsystem

#### ITE: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.01/efi-L4.zip) (2021-09-22)
>     Updated fan curve
>     Updated Fn binding at post

#### ITE: [1.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.02/efi-L4.zip) (2021-09-22)
>     Updated fan curve

#### ITE: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.03/efi-L4.zip) (2021-09-22)
>     Updated fan curve

#### AMI: [1.6.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.6.0/efi-L4.zip) (2021-09-22)
>     Changed default brightness to 100
>     Updated Secure Boot Keys
>     Improved support for SATA SSD's
>     Improved charging speed
>     Improved Type-C detection

#### AMI: [1.8.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/1.8.0/efi-L4.zip) (2021-09-22)
>     Updated verb table for headphone detection

#### AMI: [2.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.0.0/efi-L4.zip) (2021-09-22)
>     Updated verb table for headphone detection

#### AMI: [2.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.1.0/efi-L4.zip) (2021-09-22)
>     Updated verb table to enable headphone jack detection

#### ITE: [1.04](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.04/efi-L4.zip) (2021-09-22)
>     Function lock state remembered between reboots

#### AMI: [2.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.2.0/efi-L4.zip) (2021-09-22)
>     Updated Microcode
>     Added option to disable BLE
>     Updated Verb Table

#### AMI: [2.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.3.0/efi-L4.zip) (2021-09-22)
>     Added Windows Compliant Codec Header
>     Update Headset Mic Detection

#### coreboot: [1](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/1/efi-L4.zip) (2021-09-22)
>     Rebase on upstream
>     Reverted to FSP
>     Updated BGRT Logo

#### coreboot: [2](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/2/efi-L4.zip) (2021-09-22)
>     Rebase on upstream
>     Changed to ASL v2 syntax

#### coreboot: [3](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/3/efi-L4.zip) (2021-09-22)
>     Updated VBT ID's
>     Removed unused ACPI
>     Rebase on upstream
>     Updated FSP configuration
>     Disabled S4

#### coreboot: [4](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/4/efi-L4.zip) (2021-09-22)
>     Rebase on upstream
>     Changed Tianocore to upp_next branch
>     Configured CMOS to allow settings to be changed with coreboot-configurator application
>     Disabled VBR
>     Fixed bug where Fn Lock state lost on reboot
>     Enabled EVAC register in EC asl

#### AMI: [2.4.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.4.0/efi-L4.zip) (2021-09-22)
>     Fixed bug where Windows would output sound to both headphones and speakers

#### coreboot: [5](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/5/efi-L4.zip) (2021-09-22)
>     Rebased on upstream
>     Added CMOS option to enable Intel ME
>     Fixed bug where ECOS wasnt stored on S3
>     Improved battery ACPI
>     Removed delay for charger connect/disconnect

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

#### ITE: [1.05](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.05/efi-L4.zip) (2021-09-22)
>     Updated power configuration
>     Use battery power when charger doesnt supply enough

#### ITE: [1.06](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.06/efi-L4.zip) (2021-09-22)
>     Add Q Event for Touchpad State which allows it to be saved on reboot

#### AMI: [2.5.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.5.0/efi-L4.zip) (2021-09-28)
>     Updated version information
>     Updated verb table EQ

#### ITE: [1.07](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/ITE/1.07/efi-L4.zip) (2021-09-29)
>     Add support to set the maximum charge level of the battery

#### AMI: [2.6.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/AMI/2.6.0/efi-L4.zip) (2021-09-30)
>     Add setup item to change maximum charge level

#### coreboot: [7](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7/efi-L4.zip) (2021-10-07)
>     Rebase on upstream
>     Fixed bug on upgrading to 6 when wireless, webcam and microphone could be disabled
>     Fixed second ACPI backlight control
>     Support to control fan and max charge level (Requires EC support)
>     Updated verb table to improve microphone input and speakers

#### coreboot: [8](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8/efi-L4.zip) (2021-12-12)
>     Rebase on coreboot 4.15
>     Fixed issue where EC settings weren't changed
>     Fixed ACPI bug _BCL not hooked up
>     Store serial number in CMOS
>     Updated GPIOs
>     Updated hardware EQ

#### coreboot: [7.8](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.8/efi-L4.zip) (2021-12-22)
>     Rebase on upstream (4.15)
>     Remove _BCL from acpigen
>     Enable I2C4
>     Fix EC settings not being applied
>     Update verb table
>     Enable PTT
>     Disconnect unused GPIOs

#### coreboot: [7.9](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.9/efi-L4.zip) (2022-01-05)
>     Fixed EC GPE

#### coreboot: [7.10](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.10/efi-L4.zip) (2022-01-05)
>     Fix SMI IRQ

#### coreboot: [7.92](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.92/efi-L4.zip) (2022-03-02)
>     Rebase on coreboot 4.16
>     Fixed issue where battery would report to high of a capacity
>     Decreased power consumption

#### coreboot: [7.95](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.95/efi-L4.zip) (2022-03-07)
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions

#### coreboot: [7.96](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/7.96/efi-L4.zip) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime

#### coreboot: [8.00](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8.00/efi-L4.zip) (2022-06-16)
>     Rebased on coreboot 4.17
>     Built using edk2 202205
>     Support adjusting the maximum charge level
>     Fixed Webcam disable option
>     Adjust TCC Offset depending on Power Profi

#### coreboot: [8.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8.02/efi-L4.zip) (2022-07-04)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt

#### coreboot: [8.05](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8.05/efi-L4.zip) (2022-08-08)
>     Reduced timeout for initialising SD Card Reader
>     Dynamically created CMOS entries so only relevant options are shown
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.07](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8.07/efi-L4.zip) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### coreboot: [8.08](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8.08/efi-L4.zip) (2022-08-23)
>     Update the Max Charge offset so the value is stored correctly
>     when saved.

#### coreboot: [8.09](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8.09/efi-L4.zip) (2022-08-30)
>     Modify the PS2 initialisation sequence to solve a problem where
>     keys are emitted intermittantly.

#### coreboot: [8.15](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIV/coreboot/8.15/efi-L4.zip) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Improved resource allocated

#### coreboot: [8.18](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.18/coreboot-L4.cab) 2022-11-09
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Reserved the centuary byte
>     Enabled mirror flag to automatically update the EC
>     Improve edk2s compatibility with non-compliant USB drives by:
>     Adjust the MaxPacketLength for USB 1.0 devices from 8 to anything less that 64
>     Adjust the MaxPacketLength for USB 2.0 devices from 32 or 64 to anything less than 512
>     Adjust the MaxPacketLength for USB 3.0 devices from 512 to anything less than 1024
>     Stall after requesting descriptor
>     Reset the port after a status change
>     Handle incorrect PSIV indices
>     Dont check for invalid PSIV


#### coreboot: [8.19](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.19/coreboot-L4.cab) 2022-12-01
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Modified USB flow


#### coreboot: [8.20](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.20/coreboot-L4.cab) 2022-12-22
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV


#### coreboot: [8.37](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.37/coreboot-L4.cab) 2023-04-11
>     Fix the inconsistant memory map in edk2
>     Disable DPST to fix a flicker with recent kernels
>     Dont let coreboot try to change EC values


#### coreboot: [8.40](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.40/coreboot-L4.cab) 2023-04-21
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Let coreboot configure ASPM
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Dont let coreboot try to change variables in the EC memory


#### coreboot: [8.43](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.43/coreboot-L4.cab) 2023-05-31
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Moving configurable options to CFR so they can now be changed in edk2
>     rather than via coreboot-configurator
>     Add TPM control to edk2
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop


#### coreboot: [8.50](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.50/coreboot-L4.cab) 2023-06-14
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop
>     Switch to upstream fsp


#### coreboot: [8.60](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.60/coreboot-L4.cab) 2023-07-21
>     Adjust the layout of CFR
>     Rebase on upstream


#### coreboot: [8.90](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.90/coreboot-L4.cab) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot


#### coreboot: [8.94](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.94/coreboot-L4.cab) 2023-09-07
>     Based on coreboot 4.21
>     Rebased on upstream edk2


#### coreboot: [8.95](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.95/coreboot-L4.cab) 2023-09-21
>     ebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update


#### coreboot: [8.96](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIV/coreboot/8.96/coreboot-L4.cab) 2023-09-27
>     Fixed an issue where the keyboard backlight wasnt functional
>     Rebased on coreboot master
>     Rebased on edk2 master

