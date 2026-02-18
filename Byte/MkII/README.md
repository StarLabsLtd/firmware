
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


#### coreboot: [26.02](https://support.starlabs.systems/kb/firmware/getting-started) 2026-02-18
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
>     * [StarFighter/StarBook Horizon] Improved USB-C/PD configuration
>     * Updated default power profile tuning and limits
>     

