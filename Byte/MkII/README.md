
#### coreboot: [24.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-04-25
>     Initial release firmware for the Byte Mk II
>     Based on coreboot 24.02.1
>     Based on edk2/master


#### coreboot: [24.08](https://support.starlabs.systems/kb/firmware/getting-started) 2024-09-06
>     Add a new driver for WiFi
>     Add a new driver for Bluetooth
>     Optimise initial GPIO configuration
>     Optimise thermal configuration
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

