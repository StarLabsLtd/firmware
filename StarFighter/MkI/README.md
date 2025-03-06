
#### coreboot: [24.09](https://support.starlabs.systems/kb/firmware/getting-started) 2024-10-22
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


#### coreboot: [24.09](https://support.starlabs.systems/kb/firmware/getting-started) 2024-10-22
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

