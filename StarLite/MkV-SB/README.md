
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

