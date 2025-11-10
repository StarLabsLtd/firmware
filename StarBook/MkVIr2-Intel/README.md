
#### ami-flashrom: [1.0.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-08
>     Initial release firmware for the StarBook Mk VIr2
>     Based on AMI 5.29


#### coreboot: [8.94](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-08
>     Initial release coreboot firmware for the StarBook Mk VIr2
>     Based on coreboot 4.21
>     Based on edk2 master


#### ami: [1.0.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-08
>     Initial release firmware for the StarBook Mk VIr2
>     Based on AMI 5.29


#### coreboot: [8.95](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-21
>     Rebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update
>     Disable GpioOverride to allow FSP to configure ClkReq


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
>     Added support for 100W PD (Power Delivery) chargers.
>     Improved S3 resume times.
>     Added options to disable the card reader and fingerprint reader.
>     Changed the default fan profile to Balanced.


#### coreboot: [24.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Rebased on coreboot 24.02.1
>     Rebased on edk2 master
>     Includes fix for coreboots leap year bug
>     Extended battery reporting
>     Add an indicator for LEARN
>     Make LEARN configurable
>     Improved ASPM detection


#### ami-flashrom: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Updated the EC to 24.03
>     Fixes batteries not being initialised correctly


#### ami: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Updated the EC to 24.03
>     Fixes batteries not being initialised correctly


#### coreboot: [24.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-04-25
>     Add PCI Device ID for the sound card to improve Windows compatibility
>     Dont report the battery serial number to avoid issues with Windows
>     Make PCI Clock Power Management, ASPM and L1 Substates configurable
>     Fix USB-C devices being limited to USB 2.0 speeds


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

