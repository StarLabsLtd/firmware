
#### coreboot: [24.06](https://support.starlabs.systems/kb/firmware/getting-started) 2024-06-27
>     Fixed an issue which made the touchscreen intermittently stop responding
>     Improved Bluetooth compatibility
>     Decreased the delay on the power button when an OS is loaded
>     Added an option to set the charging speed
>     Added an option to disable the lid switch


#### coreboot: [24.07](https://support.starlabs.systems/kb/firmware/getting-started) 2024-07-29
>     Adjust the charging frequency to improve stability
>     Change the touchscreen IRQ to driver to improve stability
>     Add an option to disable waking from suspend by opening the lid
>     Change the default power profile to balanced
>     Adjust the memory training
>     Adjust the Hot Plug Detection for the USB-C ports
>     Optimise GPIO configuration
>     Initialise the wireless card later in the boot process
>     Add an option to limit the charging current
>     Tweaks the timing of the power button
>     Optimise how the temperature is read from the battery
>     Wait for an RDO when starting from G3
>     Speed up CC
>     Remove superfluous CFR options
>     Improve ACPI for CNVi
>     Report tablet docked status
>     Improve the accuracy of the SOC


#### coreboot: [24.08](https://support.starlabs.systems/kb/firmware/getting-started) 2024-09-06
>     Add a new driver for WiFi
>     Add a new driver for Bluetooth
>     Adjust how the ROTM is reported
>     Optimise initial GPIO configuration
>     Improve battery detection
>     Improve battery profile initialisation
>     Make the touchscreen frequency configurable
>     Remove superfluous PD messages
>     Rebased on coreboot 24.08
>     Rebased on edk2/master


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
>     Security:
>     * Added support for SecureBoot (no keys will be enrolled in this release)
>     
>     Bug Fixes:
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

