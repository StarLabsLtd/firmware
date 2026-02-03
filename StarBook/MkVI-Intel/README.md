## **StarBook**[MkVI-Intel](https://github.com/StarLabsLtd/firmware/tree/master/StarBook/MkVI-Intel)
#### ami: [1.0.0](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
>     Initial release of AMI Aptio V for the StarBook Mk VI
>     Based on AMI 5.29


#### ite: [1.00](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
>     Initial release EC firmware for the StarBook Mk V


#### ite: [1.01](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
>     Enabled hybrid power; when using a charger that doesnt supply enough power,
>     the battery will also power the laptop. This will only happen if the battery
>     is charged to 150r more.


#### ami-flashrom: [1.0.0](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
>     Initial release of AMI Aptio V for the StarBook Mk VI
>     Based on AMI 5.29


#### coreboot: [8.18](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-11
>     Initial release firmware for the StarBook Mk VI
>     Based on coreboot 4.18


#### coreboot: [8.19](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-01
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Modified USB flow


#### coreboot: [8.20](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-23
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV


#### coreboot: [8.21](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-06
>     Disable pin widget 0x17 as its not used
>     Enable pin widget 0x18 for combo jack microphone detection


#### ami: [1.1.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-11
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### ami-flashrom: [1.1.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-11
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### ami: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-13
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### ami-flashrom: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-13
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### coreboot: [8.22](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-16
>     Modified FSP configuration to ensure that virtual wires are configured which
>     fixes SSDs not being initialised all of the time
>     Fix the wrong sleep state being recorded


#### coreboot: [8.23](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-20
>     Enforce Gen 4 SSD support
>     Fix the disable wireless CMOS option
>     Clear PMCON register on power state change
>     Rebase on coreboot 4.19


#### coreboot: [8.24](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-24
>     Modify HPD GPIO to fix issue with USB-C DisplayPort
>     Let coreboot configure the vGPIOs rather than FSP
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs


#### coreboot: [8.25](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-25
>     Enforce Gen 4 SSD support
>     Fix the disable wireless CMOS option
>     Clear PMCON register on power state change
>     Rebase on coreboot 4.19
>     Modify HPD GPIO to fix issue with USB-C DisplayPort
>     Let coreboot configure the vGPIOs rather than FSP
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs


#### coreboot: [8.25](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-25
>     Enforce Gen 4 SSD support
>     Fix the disable wireless CMOS option
>     Clear PMCON register on power state change
>     Rebase on coreboot 4.19
>     Modify HPD GPIO to fix issue with USB-C DisplayPort
>     Let coreboot configure the vGPIOs rather than FSP
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs


#### coreboot: [8.26](https://support.starlabs.systems/kb/firmware/getting-started) 2023-02-02
>     Testing update with the following changes
>     Adjust nvme dxe to try and improve compatiblity with third-party SSDs
>     Enabled ASPM
>     Enabled clock request detect
>     Adjust USB tuning to fix suspend issue
>     Adjust enumeration
>     Remove soundwire workaround
>     Dont show SD card reader as a bootable device when there is no SD card


#### coreboot: [8.27](https://support.starlabs.systems/kb/firmware/getting-started) 2023-02-06
>     Remove D3Cold from SSDT to fix S3 exit issue
>     Enabled ASPM
>     Enabled clock request detect
>     Adjust USB tuning
>     Adjust enumeration
>     Remove soundwire workaround
>     Dont show SD card reader as a bootable device when there is no SD card


#### coreboot: [8.29](https://support.starlabs.systems/kb/firmware/getting-started) 2023-02-17
>     Add a cmos option to enable Hot Plug for the SSD. This slows
>     down coreboot enough for third-party drives to be detected.
>     


#### coreboot: [8.31](https://support.starlabs.systems/kb/firmware/getting-started) 2023-02-20
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs
>     Enabled ASPM
>     Enabled clock request detect
>     Remove D3Cold from SSDT to fix S3 exit issue
>     Remove soundwire workaround
>     Dont show SD card reader as a bootable device when there is no SD card


#### ite: [1.03](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-13
>     Improved the reliability of DC Jack charging by modifying it to 800MHz, 3A
>     Avoided charging stalling by continuously polling the SMBus after overcharge protection is active
>     Exposed the behavior of overcharge protection to APCI
>     Set the charge LED to purple when overcharge protection is active
>     Modified fan curve
>     Ensured the trackpad is in the desired state by polling its state every 10ms
>     Set the brightness of the keyboard backlight to the maximum
>     Streamlined the system by removing unused SMM events


#### coreboot: [8.32](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-13
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Remove the hotplug workaround for SSDs and set coreboot to not disable PCI devices
>     Switch to custom FSP based on 3385
>     Disable clock request detect
>     Add a new method for activiting the mirror flag
>     Include EC 1.03
>     Please note - EC 1.03 includes a PD update, and will only update automatically when
>     connected to a DC Jack charger. If you are using a USB-C charger, please update via
>     the EFI Shell
>     


#### ite: [1.04](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-20
>     Store power related variables in the EC RAM and mirror them to EC memory
>     to avoid memory overflow to mitigate some strange behaviours when the EC
>     memory overflows


#### coreboot: [8.33](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-20
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Switch to custom FSP based on 3385
>     Disable clock request detect
>     Add a new method for activiting the mirror flag
>     Includes EC 1.04
>     Please note - EC 1.04 includes a PD update, and will only update automatically when
>     connected to a DC Jack charger. If you are using a USB-C charger, please update via
>     the EFI Shell


#### ite: [1.05](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-27
>     Fix the charging voltage to 13.2V
>     Only call Anx when USB-C PD chargers are connected
>     Disable Hybrid-Power when charging current is less that 1536


#### ami-flashrom: [1.3.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-27
>     Fix the ESRT entry
>     Include an uninforced copy of EC 1.05 


#### ami: [1.3.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-27
>     Fix the ESRT entry
>     Include an uninforced copy of EC 1.05 


#### coreboot: [8.34](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-28
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Includes EC 1.05


#### coreboot: [8.35](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-29
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Includes EC 1.05


#### ite: [1.06](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-30
>     Strip PD responses to only include valid bits


#### ite: [1.07](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-31
>     Disable PD requests when a normal USB-C device is connected
>     Account for having two chargers connected
>     Optimise the charging calculations


#### coreboot: [8.36](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-04
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Includes EC 1.07


#### ite: [1.10](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-05
>     Disable Hybrid Power when the RSOC is less than 20 percent
>     Only enable LEARN once when RSOC is greater than 50 percent
>     Dont query unused registers on the BQ24780S


#### ite: [1.11](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-06
>     Adjust the threshold for Hybrid Power to 1536MA
>     Adjust the threshold for Hybrid Power to be disable to 5 percent RSOC


#### coreboot: [8.37](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-11
>     Correctly disable D3Cold
>     Fix the inconsistant memory map in edk2
>     Enable early caching of TOM
>     Dont let coreboot try to change variables in the EC memory
>     Fix the verb table not loading completely
>     


#### ite: [1.12](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-14
>     Revert the charging rate to 0.5C
>     Store the state of charging at 0xa0


#### coreboot: [8.38](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-14
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Remove the Intel sound entries from the verb table, to fix an issue
>     resuming from suspend thats initiated by a display manager
>     Hide the P2SB


#### coreboot: [8.39](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-19
>     Final testing release before the stable version
>     Move ramtop outside of checksummed area to fix warning about invalid checksum


#### coreboot: [8.39](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-19
>     Final testing release before the stable version
>     Move ramtop outside of checksummed area to fix warning about invalid checksum


#### coreboot: [8.39](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-19
>     Final testing release before the stable version
>     Move ramtop outside of checksummed area to fix warning about invalid checksum
>     Let coreboot configure ASPM


#### coreboot: [8.40](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-21
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Switch to custom FSP based on 3385
>     Disable clock request detect
>     Let coreboot configure ASPM
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Remove the Intel sound entries from the verb table, to fix an issue
>     resuming from suspend thats initiated by a display manager
>     Dont let coreboot try to change variables in the EC memory
>     Fix the verb table not loading completely
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     


#### coreboot: [8.41](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-23
>     Adjust the flags for pci_hot_plug to slow down SSD initialisation more


#### ite: [1.13](https://support.starlabs.systems/kb/firmware/getting-started) 2023-05-09
>     Increase the charging speed to 1C when temperatures allow
>     Reduce the amount of variables polled via the SMBus
>     Fixed an issue when batteries would not exit shipping mode
>     


#### coreboot: [8.42](https://support.starlabs.systems/kb/firmware/getting-started) 2023-05-25
>     Microcode update from Intel
>     Rebase on edk2 stable tag
>     Rebase on coreboot master
>     Switch to fixed bars
>     Switch to upstream fsp
>     Increase the size of the ramtop entry


#### coreboot: [8.43](https://support.starlabs.systems/kb/firmware/getting-started) 2023-05-31
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Moving configurable options to CFR so they can now be changed in edk2
>     rather than via coreboot-configurator
>     Add TPM control to edk2
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix how ASPM is configured in FSP
>     Fix the size allocations in ramtop


#### coreboot: [8.50](https://support.starlabs.systems/kb/firmware/getting-started) 2023-06-14
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Rename the pci_hot_plug setting to Third Party SSD Support
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix how ASPM is configured in FSP
>     Fix the size allocations in ramtop
>     Switch to fixed bars
>     Switch to upstream fsp


#### coreboot: [8.51](https://support.starlabs.systems/kb/firmware/getting-started) 2023-06-22
>     Adjust the S3 flow


#### coreboot: [8.60](https://support.starlabs.systems/kb/firmware/getting-started) 2023-07-21
>     Adjust the Type-C Output types
>     Enabled the crashlog
>     Adjust the layout of CFR


#### coreboot: [8.60](https://support.starlabs.systems/kb/firmware/getting-started) 2023-07-21
>     Adjust the Type-C Output types
>     Enabled the crashlog
>     Adjust the layout of CFR


#### coreboot: [8.80](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-08
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16


#### ite: [1.16](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-17
>     Make the charging LED flicker between red and blue when no
>     battery is present
>     Fix the ANX7447 initialisation
>     Optimise the power sequence
>     Adjust the timing of the power button to handle error states


#### coreboot: [8.90](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16


#### coreboot: [8.92](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-30
>     Rebased on coreboot 4.21
>     Rebased on upstream edk2


#### coreboot: [8.94](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-07
>     Based on coreboot 4.21
>     Rebased on upstream edk2
>     Improved power reporting
>     Update EC binary to 1.17


#### ite: [1.17](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-12
>     Adjust the reporting of the power status
>     Further optimise the power sequence


#### coreboot: [8.95](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-21
>     Rebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update
>     Disable GpioOverride to allow FSP to configure ClkReq


#### ite: [1.18](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-27
>     Fixed an issue where batteries werent initialised


#### coreboot: [8.99](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-26
>     Remove the option to enable the legacy 8254 timer
>     Fix the issue when connecting the charger would power on the laptop
>     Reset the OCM status before initialisation
>     Reduce the frequency of battery status updates to 2W
>     Allow the power button to fall through
>     Rebased on coreboot/main
>     Rebased on edk2/master
>     
>     Fixes #137
>     Fixes #136
>     Fixes #135


#### ite: [1.21](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-26
>     Fix the issue when connecting the charger would power on the laptop
>     Reset the OCM status before initialisation
>     Reduce the frequency of battery status updates to 2W
>     Allow the power button to fall through


#### coreboot: [9.00](https://support.starlabs.systems/kb/firmware/getting-started) 2023-12-07
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
>     
>     Fixes #144
>     Fixes #143
>     Fixes #140
>     Fixes #139


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


#### ami-flashrom: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Updated the EC to 24.03
>     Fixes batteries not being initialised correctly


#### ami: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Updated the EC to 24.03
>     Fixes batteries not being initialised correctly


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


#### coreboot: [24.09](https://support.starlabs.systems/kb/firmware/getting-started) 2024-10-17
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


#### coreboot: [25.01](https://support.starlabs.systems/kb/firmware/getting-started) 2025-01-28
>     General Updates:
>     * Added conditional logic to ACPI to improve boot times based on current settings.
>     * Updated device names in the Boot Manager to be more human-readable.
>     * Reduced overall power consumption.
>     
>     Bug Fixes/Enhancements:
>     * Corrected the configuration of vGPIOs to enable Bluetooth scanning.
>     * Fixed an issue causing inconsistent charger detection.
>     * Resolved a display flickering issue on certain Arch Linux distributions.
>     * Fixed a power status reporting error for Bluetooth devices in Windows.
>     * Fixed an issue where the battery incorrectly reported as depleted.
>     * Improved USB error handling in the BIOS.
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


#### coreboot: [25.06](https://support.starlabs.systems/kb/firmware/getting-started) 2025-06-17
>     General Updates:
>     * Updated the UEFI revocation database (dbx)Add commentMore actions
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


#### coreboot: [25.10](https://support.starlabs.systems/kb/firmware/getting-started) 2025-10-07
>     General Updates:
>     * Add an option to disable the Power LED
>     * Removed the PL4 limit in favour of Charge Controller PROCHOT unlocking twice the amount of power
>     * Optimised boot times for both coreboot and the EC
>     * Allow lower brightness levels
>     * Updated microcode
>     * Improved eSPI handshaking
>     * Allow booting straight from G3 with a 200ms power button press
>     * Reduce the time
>     * Improved S0IX support
>     
>     Security Updates:
>     * Updated UEFI Revocation list
>     * Add support for LUKS and BitLocker
>     
>     Bug Fixes/Enhancements:
>     * [StarBook Mk VII-U] Fixed the iGPU IRQ
>     * [StarBook Mk VII-U] Fixed an issue with DisplayAlt Mode
>     * [StarBook Mk VII-N] Reduce charging noise
>     * [StarBook Mk VII] Fixed an issue that prevented audio output on Windows
>     * [StarBook Mk VI] Fixed an issue that prevented S3 exit
>     * Wake for suspend if the battery gets low
>     * Fixed an issue where the fan could stop increasing
>     


#### coreboot: [25.11](https://support.starlabs.systems/kb/firmware/getting-started) 2025-11-10
>     General Updates:
>     * Add an option to disable the Power LED
>     * Removed the PL4 limit in favour of Charge Controller PROCHOT unlocking twice the amount of power
>     * Optimised boot times for both coreboot and the EC
>     * Allow lower brightness levels
>     * Updated microcode
>     * Improved eSPI handshaking
>     * Allow booting straight from G3 with a 200ms power button press
>     * Reduce the time
>     * Improved S0IX support
>     
>     Security Updates:
>     * Updated UEFI Revocation list
>     * Add support for LUKS and BitLocker
>     
>     Bug Fixes/Enhancements:
>     * [StarBook Mk VII-U] Fixed the iGPU IRQ
>     * [StarBook Mk VII-U] Fixed an issue with DisplayAlt Mode
>     * [StarBook Mk VII-N] Reduce charging noise
>     * [StarBook Mk VII] Fixed an issue that prevented audio output on Windows
>     * [StarBook Mk VI] Fixed an issue that prevented S3 exit
>     * Wake for suspend if the battery gets low
>     * Fixed an issue where the fan could stop increasing
>     


#### coreboot: [25.12](https://support.starlabs.systems/kb/firmware/getting-started) 2025-12-11
>     General Updates
>     * EC startup time has been reduced from 415ms to 170ms
>     * Hardened power sequence to avoid getting stuck
>     * Updated Intel microcode
>     * eSPI Virtual Wires are now interrupt-driven for better response times
>     * Updated default settings aimed at performance
>     * Remove the power button debounce (double press is no longer required)
>     * Updated firmware menu that now shows battery level and allows adjusting the time and date
>     * The system will now wake if suspended, and the battery gets too low
>     
>     New Options:
>     * Enable/Disable/Dim the power LED
>     * Enable/Disable/Dim the charging LED
>     * Enable/Disable Total Memory Encryption
>     * Enable/Disable BIOS Lock
>     
>     Security Updates:
>     * Updated UEFI revocation list
>     * Added support for LUKS and BitLocker
>     
>     Bug Fixes / Enhancements
>     * Fixed reset paths in coreboot to avoid the system hanging when changing settings that required global resets
>     * Guard against SMBUS transactions not completing
>     * Increase SMM store size in coreboot to allow UEFI revocation list updates to be installed from the LVFS
>     * Fixed backlight level restoration after suspend (S3)
>     * Fixed resuming from hibernation (S4)
>     * Fixed an issue that prevented powering off in certain conditions
>     * Fixed sound output on Windows
>     * Fixed an issue where the fan could stall
>     * Fixed disabling the card reader
>     * Fixed Device Manager constantly refreshing on Windows
>     * Fixed the capabilities reported by the TPM driver
>     


#### coreboot: [26.01](https://support.starlabs.systems/kb/firmware/getting-started) 2026-02-03
>     General Updates:
>     * Improved sleep/wake and reset reliability
>     * Added support for EFI capsules for easier, more secure updates
>     * Updated BIOS setup lauouy, with simpler user-interface
>     
>     New Options:
>     * [StarFighter] Memory Speed
>     
>     Security Updates:
>     * Add an option to lock the BIOS Setup with a password
>     * BIOS Lock is now enabled by default
>     
>     Bug Fixes / Enhancements:
>     * Fixed power LED “breathing” behavior in sleep (S3).
>     * Fixed Wake-on-LAN on Byte
>     * Updated platform defaults based on fan presence
>     

