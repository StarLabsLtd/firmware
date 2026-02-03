
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

