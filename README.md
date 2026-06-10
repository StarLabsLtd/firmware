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

#### [26.04] 2026-04-10
>     General Updates:
>     * Added capsule update support, with graphical update progress, more reliable flashing, and better preservation of existing settings and unchanged firmware data
>     * Reworked the firmware setup menu into a cleaner Settings-style layout, with clearer Boot and Security sections
>     
>     New Options:
>     * Configurable boot timeout
>     * Digital Signal Processor
>     * [StarFighter] Touchpad Vibration Intensity
>     * [StarFighter] Touchpad Click Force
>     * [StarFighter] Touchpad Release Force
>     * [StarFighter] Touchpad Tracking Speed
>     * [StarFighter] Speaker Idle
>     
>     Security Updates:
>     * Added BIOS password protection
>     * Added TCG OPAL storage support for compatible NVMe drives, including S3 unlock support
>     
>     Bug Fixes / Enhancements:
>     * Added better HiDPI scaling in firmware setup and improved graphics handoff, helping hibernation (S4) behave more reliably
>     * Corrected panel timing values against panel datasheets across current Star Labs platforms
>     * Increased PWM frequencies across supported boards to reduce flicker
>     * Added staged NVMe power sequencing on supported platforms so third-party and slower-to-initialize drives initialise more reliably
>     * [StarFighter] Enabled the card reader in firmware
>     * [StarLite Mk V / Horizon] Increased speaker output configuration to the intended 2.5W path
>     * Improved keyboard scan debounce handling so new key presses are detected more consistently
>     * Improved S3 power LED breathing behaviour for smoother and more consistent transitions
>     * Simplified reduced-brightness handling for the LEDs
>     * [Byte Mk III] Fix fan curve setting


#### [26.05] 2026-04-30
>     General Updates: 
>     * Added support for AMD Cezanne models (Byte Mk I and StarBook Mk VI)
>     * Added coreboot support for Byte Mk I and StarBook Mk VI-AMD
>     
>     New Options:
>     * Custom power profile controls for PL1, PL2, PL4, and CPU thermal throttle temperature
>     * Per-port PCIe power management controls
>     * HDA DSP firmware setup toggle
>     
>     Bug Fixes / Enhancements:
>     * Reduced false CPU throttling from charge-controller PROCHOT while preserving brown-out protection
>     * [StarFighter] Reduced touchpad startup delay and fixed touchpad settings not being applied
>     * [StarFighter] Improved Wi-Fi, Bluetooth, and touchpad setup handling
>     * [StarLite Mk V] Improved battery free operation


#### [26.06] 2026-06-10
>     General Updates: 
>     * Added support for AMD Cezanne models (Byte Mk I and StarBook Mk VI)
>     
>     Bug Fixes / Enhancements:
>     * Improved capsule update reliability
>     * Fixed hibernation failures caused by inconsistent payload memory maps
>     * Ignored malformed OS-created UEFI variable records instead of blocking boot
>     * Avoided EDK2 serial port reinitialisation
>     * Dropped shell networking when networking support is disabled
>     * Disable TPM1
>     * Fixed PCR0 Reconstruction
>     * Improved HiDPI logo, console text, and graphics handoff handling
>     * Reduced false CPU throttling from charge-controller PROCHOT while preserving brown-out protection
>     * Improved low battery handling with a warning splash, adjusted wake threshold, and graceful critical battery shutdown
>     * Dynamically set PL4 from charger and battery state
>     * Fixed memory speed changes reusing stale training data
>     * Fixed ANX7447 dead battery charging
>     * Added Fn+F hot key for 100 0.000000an duty
>     * Stored the serial number in firmware variables
>     * [StarFighter] Reduced touchpad startup delay and fixed touchpad settings not being applied
>     * [StarLite Mk V] Improved battery free operation and fixed auto-rotation on Ubuntu
>     * [StarBook MkVIr2-Intel] Fixed blue sleep LED breathing
>     * Improved keyboard scan debounce to reduce ghosting and missed keys

