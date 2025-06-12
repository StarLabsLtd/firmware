## **StarLabTop**[MkIV](https://github.com/StarLabsLtd/firmware/tree/master/StarLabTop/MkIV)

#### ITE: [1.00](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Initial release firmware for the StarLabTop Mk IV

#### AMI: [1.1.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Initial release firmware for the StarLabTop Mk IV

#### AMI: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Fixed bug where headphones not detected

#### AMI: [1.3.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Improved WiFi configuration
>     Improved audio jack detection

#### AMI: [1.4.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Adjusted audio subsystem

#### ITE: [1.01](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated fan curve
>     Updated Fn binding at post

#### ITE: [1.02](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated fan curve

#### ITE: [1.03](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated fan curve

#### AMI: [1.6.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Changed default brightness to 100
>     Updated Secure Boot Keys
>     Improved support for SATA SSD's
>     Improved charging speed
>     Improved Type-C detection

#### AMI: [1.8.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated verb table for headphone detection

#### AMI: [2.0.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated verb table for headphone detection

#### AMI: [2.1.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated verb table to enable headphone jack detection

#### ITE: [1.04](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Function lock state remembered between reboots

#### AMI: [2.2.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated Microcode
>     Added option to disable BLE
>     Updated Verb Table

#### AMI: [2.3.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Added Windows Compliant Codec Header
>     Update Headset Mic Detection

#### coreboot: [1](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Rebase on upstream
>     Reverted to FSP
>     Updated BGRT Logo

#### coreboot: [2](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Rebase on upstream
>     Changed to ASL v2 syntax

#### coreboot: [3](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated VBT ID's
>     Removed unused ACPI
>     Rebase on upstream
>     Updated FSP configuration
>     Disabled S4

#### coreboot: [4](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Rebase on upstream
>     Changed Tianocore to upp_next branch
>     Configured CMOS to allow settings to be changed with coreboot-configurator application
>     Disabled VBR
>     Fixed bug where Fn Lock state lost on reboot
>     Enabled EVAC register in EC asl

#### AMI: [2.4.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Fixed bug where Windows would output sound to both headphones and speakers

#### coreboot: [5](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Rebased on upstream
>     Added CMOS option to enable Intel ME
>     Fixed bug where ECOS wasnt stored on S3
>     Improved battery ACPI
>     Removed delay for charger connect/disconnect

#### coreboot: [6](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
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

#### ITE: [1.05](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated power configuration
>     Use battery power when charger doesnt supply enough

#### ITE: [1.06](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Add Q Event for Touchpad State which allows it to be saved on reboot

#### AMI: [2.5.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-28)
>     Updated version information
>     Updated verb table EQ

#### ITE: [1.07](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-29)
>     Add support to set the maximum charge level of the battery

#### AMI: [2.6.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-30)
>     Add setup item to change maximum charge level

#### coreboot: [7](https://support.starlabs.systems/kb/firmware/getting-started) (2021-10-07)
>     Rebase on upstream
>     Fixed bug on upgrading to 6 when wireless, webcam and microphone could be disabled
>     Fixed second ACPI backlight control
>     Support to control fan and max charge level (Requires EC support)
>     Updated verb table to improve microphone input and speakers

#### coreboot: [8](https://support.starlabs.systems/kb/firmware/getting-started) (2021-12-12)
>     Rebase on coreboot 4.15
>     Fixed issue where EC settings weren't changed
>     Fixed ACPI bug _BCL not hooked up
>     Store serial number in CMOS
>     Updated GPIOs
>     Updated hardware EQ

#### coreboot: [7.8](https://support.starlabs.systems/kb/firmware/getting-started) (2021-12-22)
>     Rebase on upstream (4.15)
>     Remove _BCL from acpigen
>     Enable I2C4
>     Fix EC settings not being applied
>     Update verb table
>     Enable PTT
>     Disconnect unused GPIOs

#### coreboot: [7.9](https://support.starlabs.systems/kb/firmware/getting-started) (2022-01-05)
>     Fixed EC GPE

#### coreboot: [7.10](https://support.starlabs.systems/kb/firmware/getting-started) (2022-01-05)
>     Fix SMI IRQ

#### coreboot: [7.92](https://support.starlabs.systems/kb/firmware/getting-started) (2022-03-02)
>     Rebase on coreboot 4.16
>     Fixed issue where battery would report to high of a capacity
>     Decreased power consumption

#### coreboot: [7.95](https://support.starlabs.systems/kb/firmware/getting-started) (2022-03-07)
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions

#### coreboot: [7.96](https://support.starlabs.systems/kb/firmware/getting-started) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime

#### coreboot: [8.00](https://support.starlabs.systems/kb/firmware/getting-started) (2022-06-16)
>     Rebased on coreboot 4.17
>     Built using edk2 202205
>     Support adjusting the maximum charge level
>     Fixed Webcam disable option
>     Adjust TCC Offset depending on Power Profi

#### coreboot: [8.02](https://support.starlabs.systems/kb/firmware/getting-started) (2022-07-04)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt

#### coreboot: [8.05](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-08)
>     Reduced timeout for initialising SD Card Reader
>     Dynamically created CMOS entries so only relevant options are shown
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.07](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### coreboot: [8.08](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-23)
>     Update the Max Charge offset so the value is stored correctly
>     when saved.

#### coreboot: [8.09](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-30)
>     Modify the PS2 initialisation sequence to solve a problem where
>     keys are emitted intermittantly.

#### coreboot: [8.15](https://support.starlabs.systems/kb/firmware/getting-started) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Improved resource allocated

#### coreboot: [8.18](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-09
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


#### coreboot: [8.19](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-01
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Modified USB flow


#### coreboot: [8.20](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-22
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV


#### coreboot: [8.37](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-11
>     Fix the inconsistant memory map in edk2
>     Disable DPST to fix a flicker with recent kernels
>     Dont let coreboot try to change EC values


#### coreboot: [8.40](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-21
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Let coreboot configure ASPM
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Dont let coreboot try to change variables in the EC memory


#### coreboot: [8.43](https://support.starlabs.systems/kb/firmware/getting-started) 2023-05-31
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Moving configurable options to CFR so they can now be changed in edk2
>     rather than via coreboot-configurator
>     Add TPM control to edk2
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop


#### coreboot: [8.50](https://support.starlabs.systems/kb/firmware/getting-started) 2023-06-14
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop
>     Switch to upstream fsp


#### coreboot: [8.60](https://support.starlabs.systems/kb/firmware/getting-started) 2023-07-21
>     Adjust the layout of CFR
>     Rebase on upstream


#### coreboot: [8.90](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot


#### coreboot: [8.94](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-07
>     Based on coreboot 4.21
>     Rebased on upstream edk2


#### coreboot: [8.95](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-21
>     ebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update


#### coreboot: [8.96](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-27
>     Fixed an issue where the keyboard backlight wasnt functional
>     Rebased on coreboot master
>     Rebased on edk2 master


#### coreboot: [8.99](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-26
>     Remove the option to enable the legacy 8254 timer
>     Rebased on coreboot/main
>     Rebased on edk2/master


#### coreboot: [9.01](https://support.starlabs.systems/kb/firmware/getting-started) 2024-01-11
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Fixed an issue that stopped the scheduler running


#### coreboot: [9.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-01-30
>     Remove the option to enable the legacy 8254 timer
>     Rebased on coreboot/main
>     Rebased on edk2/master


#### coreboot: [9.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-02-12
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Remove the option to turn on when connecting a charger


#### coreboot: [24.02](https://support.starlabs.systems/kb/firmware/getting-started) 2024-02-23
>     Rebased on coreboot 24.02.
>     Rebased on edk2/master.
>     Enabled PMC muxing to save power.
>     Removed the option for automatic power-on when connecting to a charger.
>     Changed PECI to IRQ-driven operation for improved efficiency.
>     Emptied the keyboard buffer more quickly.
>     Switched the compiler from Keil to SDCC.
>     Enabled automatic power-on after an EC update.
>     Fixed an issue that prevented the scheduler from running.
>     Reduced false over-current protection warnings.
>     Only wake from sleep when the lid is closed with an active PD connection.
>     Optimised the Keyboard Controller initialization.
>     Added a simple cbmem-style console that uses the PMC interface.
>     Adjusted the muxing to prevent coreboot from disconnecting displays on boot.
>     Optimised i2c operations.
>     Improved S3 resume times.
>     Added options to disable the card reader and fingerprint reader.
>     Changed the default fan profile to Balanced.


#### ite: [24.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Add an indicator for LEARN
>     Make LEARN configurable


#### coreboot: [24.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Rebased on coreboot 24.02.1
>     Rebased on edk2 master
>     Includes fix for coreboots leap year bug
>     Extended battery reporting
>     Improved ASPM detection


#### coreboot: [24.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-04-25
>     Add PCI Device ID for the sound card to improve Windows compatibility
>     Dont report the battery serial number to avoid issues with Windows
>     Make PCI Clock Power Management, ASPM and L1 Substates configurable
>     Fix PD 2.0 devices connecting to the USB-C port


#### coreboot: [24.09](https://support.starlabs.systems/kb/firmware/getting-started) 2024-10-18
>     General Updates:
>     * Reworked performance profiles for race to idle
>     * Added options to disable certain devices
>     * Removed the option to enable the 8254 timer
>     * Enhanced wireless driver, with support for RTD3
>     * Limit the PL4 to 1.0C
>     * Intel Microcode update
>     * Disabled RamTop optimisation
>     * [StarLite Mk V] Made it possible to configure the memory speed
>     * [StarLite Mk V] Make the i2c speed configurable
>     
>     Security Updates:
>     * Added support for SecureBoot (no keys will be enrolled in this release)
>     
>     Bug Fixes/Enchancements:
>     * Fixed an issue with the DFP driver that prevented it from loading
>     * Fixed an issue with the TPM driver that prevented it from loading
>     * Fixed memory allocation issue with fTPMs
>     * Fixed an issue with the discharge rate reporting
>     * Fixed the maximum C-State
>     * [StarLite Mk V] Fixed an issue where charging was intermittent
>     * [StarLite Mk V] Fixed an issue where a depleted battery could not be charged
>     * [Byte Mk II] Fixed issue where DisplayPort monitors were not connected
>     * [StarFighter Mk I] Fixed backslash key not working
>     * [StarFighter Mk I] Fixed issue where certain charges wouldnt work
>     


#### coreboot: [24.09](https://support.starlabs.systems/kb/firmware/getting-started) 2024-10-18
>     General Updates:
>     * Reworked performance profiles for race to idle
>     * Added options to disable certain devices
>     * Removed the option to enable the 8254 timer
>     * Enhanced wireless driver, with support for RTD3
>     * Limit the PL4 to 1.0C
>     * Intel Microcode update
>     * Disabled RamTop optimisation
>     * [StarLite Mk V] Made it possible to configure the memory speed
>     * [StarLite Mk V] Make the i2c speed configurable
>     
>     Security Updates:
>     * Added support for SecureBoot (no keys will be enrolled in this release)
>     
>     Bug Fixes/Enchancements:
>     * Fixed an issue with the DFP driver that prevented it from loading
>     * Fixed an issue with the TPM driver that prevented it from loading
>     * Fixed memory allocation issue with fTPMs
>     * Fixed an issue with the discharge rate reporting
>     * Fixed the maximum C-State
>     * [StarLite Mk V] Fixed an issue where charging was intermittent
>     * [StarLite Mk V] Fixed an issue where a depleted battery could not be charged
>     * [Byte Mk II] Fixed issue where DisplayPort monitors were not connected
>     * [StarFighter Mk I] Fixed backslash key not working
>     * [StarFighter Mk I] Fixed issue where certain charges wouldnt work
>     


#### coreboot: [24.10](https://support.starlabs.systems/kb/firmware/getting-started) 2024-11-14
>     General Updates:
>     * Further improve the Bluetooth driver for lower power consumption
>     * Interpolate charging current relative to 25C
>     * [Byte Mk II] Add more ACPI for the fTPM
>     * [StarLite Mk V] Made it possible to lower the brightness of the power LED
>     
>     Security Updates:
>     * Enroll a default set of keys for SecureBoot
>     
>     Bug Fixes/Enhancements:
>     * [StarBook Mk VI] Fix an issue with DSD generation
>     * [StarLite Mk V] Increase the reset delay for the touchscreen
>     * Account for late OCM loading
>     


#### coreboot: [25.02](https://support.starlabs.systems/kb/firmware/getting-started) 2025-03-06
>     General Updates:
>     * Added support for low power mode for wireless card
>     * Enable waking up from suspend by pressing any key on the keyboard
>     * Add an option to disable the fan
>     * Add an option to completely ignore the lid switch
>     * General adjustments to save power
>     * [StarLite Mk V] Low power drain when using the magnetic keyboard
>     
>     Bug Fixes/Enhancements:
>     * Improved detection for third-party SSDs
>     * Use interrupts for the TPM instead of polling
>     * Fixed an issue where Linux would hang trying to initialise the TPM
>     * [LabTop Mk IV] Fixed delay when pressing brightness control keys
>     * [StarLite Mk V] Fixed regression that stopped Bluetooth communication
>     


#### coreboot: [25.04](https://support.starlabs.systems/kb/firmware/getting-started) 2025-04-28
>     General Updates:
>     * Updated the UEFI revocation database (dbx)
>     
>     Bug Fixes/Enhancements:
>     * [StarBook MkVII-U] Fixed HDMI Hot Plug 
>     * [StarLite Mk V] Fixed inconsistent charger detection
>     * [StarBook Mk VII Ultra] Fixed power deficit that causes a shutdown
>     * [StarBook MkV] Fixed suspend
>     * [StarBook MkVII-U] Added setup option to enable/disable the NPU
>     * Added persistence of EC settings like charging speed/limit in G3
>     * Fixed display output for certain devices
>     * Fixed StarLite batteries showing 0 0x0p+0fter being idle for a long time
>     * Fixed Bluetooth cycling on/off in Windows Device Manager via RT3D toggle
>     * Fixed Manjaro GNOME display flickering with native display mode feature
>     


#### coreboot: [25.05](https://support.starlabs.systems/kb/firmware/getting-started) 2025-05-12
>     General Updates:
>     * Updated the UEFI revocation database (dbx)
>     
>     Bug Fixes/Enhancements:
>     * [StarBook MkVII-U] Fixed HDMI Hot Plug 
>     * [StarLite Mk V] Fixed inconsistent charger detection
>     * [StarBook Mk VII Ultra] Fixed power deficit that causes a shutdown
>     * [StarBook MkV] Fixed suspend
>     * [StarBook MkVII-U] Added setup option to enable/disable the NPU
>     * Added persistence of EC settings like charging speed/limit in G3
>     * Fixed display output for certain devices
>     * Fixed StarLite batteries showing 0 0x0p+0fter being idle for a long time
>     * Fixed Bluetooth cycling on/off in Windows Device Manager via RT3D toggle
>     * Fixed Manjaro GNOME display flickering with native display mode feature
>     * Added configuration option to switch between Modern Standby and S3 sleep modes
>     


#### coreboot: [25.06](https://support.starlabs.systems/kb/firmware/getting-started) 2025-06-12
>     General Updates:
>     * Updated the UEFI revocation database (dbx)
>     
>     Bug Fixes/Enhancements:
>     * [StarBook MkVII-N] Fixed issue that prevented the processor from being idle
>     * [StarBook MkVII-U] Enabled Total Memory Encryption
>     * [StarLite Mk V] Fixed rotation
>     * [StarLite Mk V] Improved keyboard detection
>     * [StarLite Mk V] Unify the Smart Battery and CW2015 variants
>     * [LabTop Mk IV] Fix reading the processor temperature
>     * [Byte Mk II] Improved boot times
>     * Improved power management for Thunderbolt ports
>     * Better power consumption reporting
>     

