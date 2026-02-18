# Coreboot Release Notes (All Boards)

Version history below is shared across all supported coreboot boards in this repository, starting from when release notes became unified across boards.

#### [26.02] 2026-02-18
>     General Updates:
>     * Improved sleep/wake and reset reliability
>     * Added support for EFI capsules for easier, more secure updates
>     * Updated BIOS setup layout, with a simpler user interface and clearer security shortcuts
>     
>     New Options:
>     * [StarFighter] Memory Speed
>     
>     Security Updates:
>     * Add an option to lock the BIOS Setup with a password
>     * BIOS Lock is now enabled by default
>     * Added TCG OPAL Storage disk encryption support, including S3 unlock support
>     * Improved Secure Boot key enrollment behavior when a KEK is already present
>     
>     Bug Fixes / Enhancements:
>     * Fixed power LED “breathing” behavior in S3
>     * Fixed Wake-on-LAN on Byte (including Wake-on-LAN in S5 where supported)
>     * [StarFighter] Enabled the card reader

#### [26.01] 2026-02-03
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

#### [25.12] 2025-12-11
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
