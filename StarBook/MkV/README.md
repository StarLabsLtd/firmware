## **StarBook**[MkV](https://github.com/StarLabsLtd/firmware/tree/master/StarBook/MkV)
#### coreboot: [8.15](https://support.starlabs.systems/kb/firmware/getting-started) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Switched to open-source libgfxinit
>     Improved resource allocated
>     Disabled XDCI
>     Prefetch memory above 4G
>     Enabled PMC muxing for reduced power consumption

#### coreboot: [8.07](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### coreboot: [8.05](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-01)
>     Reduced timeout for initialising SD Card Reader
>     Dynamically created CMOS entries so only relevant options are shown
>     Enabled Measured Boot
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.02](https://support.starlabs.systems/kb/firmware/getting-started) (2022-07-04)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt
>     

#### coreboot: [8.00](https://support.starlabs.systems/kb/firmware/getting-started) (2022-06-16)
>     Rebased on coreboot 4.17
>     Built using edk2 202205
>     Disable unused USB 3.0 port 2
>     Adjust TCC Offset depending on Power Profi
>     

#### coreboot: [7.96](https://support.starlabs.systems/kb/firmware/getting-started) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime

#### coreboot: [7.95](https://support.starlabs.systems/kb/firmware/getting-started) (2022-03-07)
>     Pull SSD Pin to low when entering S3 - saves power when suspended
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions

#### coreboot: [7.91](https://support.starlabs.systems/kb/firmware/getting-started) (2022-01-06)
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

#### AMI: [2](https://support.starlabs.systems/kb/firmware/getting-started) (2021-11-08)
>     Updated Verb Table
>     New option to set the maximum battery charge level
>     Fixed ACPI error
>     Remember Fn Lock state between reboot

#### coreboot: [7](https://support.starlabs.systems/kb/firmware/getting-started) (2021-10-08)
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

#### AMI: [1](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-27)
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

\#\#\#\# coreboot: [8.18](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
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
>     


#### coreboot: [8.19](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-25
>     Fixed an issue with Thunderbolt hubs not initialising USB devices


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


#### coreboot: [8.50](https://support.starlabs.systems/kb/firmware/getting-started) 2023-06-21
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop


#### coreboot: [8.60](https://support.starlabs.systems/kb/firmware/getting-started) 2023-07-21
>     Adjust the Type-C Output types
>     Enabled the crashlog
>     Adjust the layout of CFR


#### coreboot: [8.70](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-03
>     Fixed an issue where laptop wouldnt turn on without power connected
>     Rebased on upstream edk2
>     Rebased on upstream coreboot


#### coreboot: [8.80](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-08
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16
>     Fixed an issue which caused the power LED to be lit when off


#### coreboot: [8.90](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16
>     Fixed power drain in S5


#### coreboot: [8.92](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-30
>     Rebased on coreboot 4.21
>     Rebased on upstream edk2
>     Fix the power drain in S3 and S5
>     Added fingerprint reader support


#### coreboot: [8.94](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-07
>     Based on coreboot 4.21
>     Rebased on upstream edk2
>     Fixed power drain in S5
>     Improved power reporting
>     Update EC binary to 1.17


#### coreboot: [8.95](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-26
>     Rebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update


#### coreboot: [8.99](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-26
>     Remove the option to enable the legacy 8254 timer
>     Fix the issue when connecting the charger would power on the laptop
>     Reduce the frequency of battery status updates to 2W
>     Allow the power button to fall through
>     Rebased on coreboot/main
>     Rebased on edk2/master


#### coreboot: [9.00](https://support.starlabs.systems/kb/firmware/getting-started) 2023-12-07
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Enabled PMC muxing
>     Remove the option to turn on when connecting a charger
>     Make PECI IRQ driven
>     Empty the keyboard buffer faster
>     Switch the compiler from Keil to SDCC
>     Automatically power on after FMF
>     Only wakeup when closing the lid with CC1 and CC2


#### coreboot: [9.01](https://support.starlabs.systems/kb/firmware/getting-started) 2024-01-11
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Enabled PMC muxing
>     Remove the option to turn on when connecting a charger
>     Make PECI IRQ driven
>     Empty the keyboard buffer faster
>     Switch the compiler from Keil to SDCC
>     Automatically power on after FMF
>     Fixed an issue that stopped the scheduler running
>     Reduced false over-current protection warnings
>     Only wakeup when closing the lid with CC1 and CC2
>     Adjust the 6064 commands and data handling
>     Add a simple cbmem style console that uses the PMC interface
>     Adjust the muxing to avoid coreboot disconnecting displays on boot


#### coreboot: [9.02](https://support.starlabs.systems/kb/firmware/getting-started) 2024-01-22
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Enabled PMC muxing
>     Remove the option to turn on when connecting a charger
>     Make PECI IRQ driven
>     Empty the keyboard buffer faster
>     Switch the compiler from Keil to SDCC
>     Automatically power on after FMF
>     Fixed an issue that stopped the scheduler running
>     Reduced false over-current protection warnings
>     Only wakeup when closing the lid with CC1 and CC2
>     Adjust the 6064 commands and data handling
>     Add a simple cbmem style console that uses the PMC interface
>     Adjust the muxing to avoid coreboot disconnecting displays on boot
>     Optimise i2c ops


#### coreboot: [9.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-01-30
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Enabled PMC muxing
>     Remove the option to turn on when connecting a charger
>     Make PECI IRQ driven
>     Empty the keyboard buffer faster
>     Switch the compiler from Keil to SDCC
>     Automatically power on after FMF
>     Fixed an issue that stopped the scheduler running
>     Reduced false over-current protection warnings
>     Only wakeup when closing the lid with CC1 and CC2
>     Adjust the 6064 commands and data handling
>     Add a simple cbmem style console that uses the PMC interface
>     Adjust the muxing to avoid coreboot disconnecting displays on boot
>     Optimise i2c ops


#### coreboot: [9.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-02-12
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Enabled PMC muxing
>     Remove the option to turn on when connecting a charger
>     Make PECI IRQ driven
>     Empty the keyboard buffer faster
>     Switch the compiler from Keil to SDCC
>     Automatically power on after FMF
>     Fixed an issue that stopped the scheduler running
>     Reduced false over-current protection warnings
>     Only wakeup when closing the lid with CC1 and CC2
>     Adjust the 6064 commands and data handling
>     Add a simple cbmem style console that uses the PMC interface
>     Adjust the muxing to avoid coreboot disconnecting displays on boot
>     Optimise i2c ops


#### coreboot: [24.02](https://support.starlabs.systems/kb/firmware/getting-started) 2024-02-23
>     ebased on coreboot 24.02.
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
>     Added options to disable the card reader.
>     Changed the default fan profile to Balanced.


#### coreboot: [24.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Rebased on coreboot 24.02.1
>     Rebased on edk2 master
>     Includes fix for coreboots leap year bug
>     Extended battery reporting
>     Add an indicator for LEARN
>     Make LEARN configurable
>     Improved ASPM detection


#### coreboot: [24.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-04-25
>     Add PCI Device ID for the sound card to improve Windows compatibility
>     Dont report the battery serial number to avoid issues with Windows
>     Make PCI Clock Power Management, ASPM and L1 Substates configurable


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

