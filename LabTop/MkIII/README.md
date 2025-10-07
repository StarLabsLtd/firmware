## **StarLabTop**[MkIII](https://github.com/StarLabsLtd/firmware/tree/master/StarLabTop/MkIII)
#### coreboot: [8.15](https://support.starlabs.systems/kb/firmware/getting-started) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Improved resource allocated

#### coreboot: [8.09](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-30)
>     Adjust the Bluetooth interface to correctly enable the Bluetooth
>     interface for the Intel 8265.

#### coreboot: [8.07](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### coreboot: [8.06](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-12)
>     Add coreboot GUID to allow direct updates
>     Fix issue with speakers not outputting sound

#### coreboot: [8.05](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-08)
>     Reduced timeout for initialising SD Card Reader
>     Dyamically created CMOS entries so only relevant options are shown
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.05](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-01)
>     Reduced timeout for initialising SD Card Reader
>     Dynamically created CMOS entries so only relavant options are shown
>     Enabled Measured Boot
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.02](https://support.starlabs.systems/kb/firmware/getting-started) (2022-07-04)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt

#### coreboot: [8.00](https://support.starlabs.systems/kb/firmware/getting-started) (2022-06-16)
>     Rebased on coreboot 4.17
>     Built using edk2 202205
>     Fixed issue with sound not working
>     Adjust TCC Offset depending on Power Profile

#### coreboot: [7.98](https://support.starlabs.systems/kb/firmware/getting-started) (2022-04-27)
>     Fixed issue with sound not working
>     Rebase on upstream

#### coreboot: [7.96](https://support.starlabs.systems/kb/firmware/getting-started) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions
>     Disconnect unused GPIO's
>     Add comments for GPIOs
>     Remove display from devicetree

#### coreboot: [7](https://support.starlabs.systems/kb/firmware/getting-started) (2021-10-07)
>     Rebase on upstream
>     Fixed bug on upgrading to 6 when wireless, webcam and microphone could be disabled
>     Fixed second ACPI backlight control
>     Support to control fan and max charge level (Requires EC support)
>     Updated verb table to improve microphone input and speakers

#### ITE: [3.12](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-23)
>     New option to reverse Ctrl + Fn keys

#### ITE: [3.12](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-23)
>     New option to reverse Ctrl + Fn keys

#### coreboot: [6](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Rebase on upstream
>     New VBT's that prioritise performance over power consumption
>     New BGRT logo
>     Updated microcode
>     Updated FSP
>     Use open-source LIBGFXINIT
>     Option to disable or enable Wireless
>     Option to disable or enable Webcam
>     Option to disable or enable Microphone
>     Option to disable or enable Hyper-Threading
>     Option to disable or enable Intel VT-d
>     Option to disable or enable Clock Gating
>     Option to adjust the Thermal Design Power (15W / 20W / 25W)
>     Q-Events for specific models
>     Fixed bug where Qubes wouldn't boot (Requires disabling Clock Gating)
>     Fixed bug where Function Lock state was lost

#### coreboot: [5](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Rebased on upstream
>     Added CMOS option to enable Intel ME
>     Fixed bug where ECOS wasn't stored on S3
>     Fixed bug where S3 wouldn't resume
>     Improved battery ACPI
>     Removed delay for charger connect/disconnect

#### coreboot: [4](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Rebase on upstream
>     Changed Tianocore to upp_next branch
>     Configured CMOS to allow settings to be changed with coreboot-configurator application
>     Disabled VBR
>     Fixed bug where Fn Lock state lost on reboot
>     Enabled EVAC register in EC asl

#### coreboot: [3](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated libgfxinit configuration
>     Rebase on upstream
>     Adjusted memory handling
>     Updated VBT ID's
>     Removed unused ACPI
>     Disabled S4

#### AMI: [2.0.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Enabled BLE

#### AMI: [1.6.0](https://support.starlabs.systems/kb/firmware/getting-started) (2021-09-22)
>     Updated Microcode to D6
>     Updated CSME to 11.8.79.3772
>     Added System PK
>     Fixed adjustable keyboard backlight
>     Improved ACPI support
>     Improved SSD configuration
>     New option to reverse Ctrl + Fn keys
>     Added support for PXE Boot
>     Added performance mode selector
>     Added option to disable Hyper-threading
>     Changed default CSM support to Disabled
>     Changed default Intel ME state to Disabled
>     Added new temperature thresholds
>     Removed redundant modules
>     Removed redundant AMI PK Keys

#### coreboot: [8.18](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-11
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Reserved the centuary byte
>     Improve edk2s compatibility with non-compliant USB drives by:
>     Adjust the MaxPacketLength for USB 1.0 devices from 8 to anything less that 64
>     Adjust the MaxPacketLength for USB 2.0 devices from 32 or 64 to anything less than 512
>     Adjust the MaxPacketLength for USB 3.0 devices from 512 to anything less than 1024
>     Stall after requesting descriptor
>     Reset the port after a status change
>     Handle incorrect PSIV indices
>     Dont check for invalid PSIV


#### coreboot: [8.19](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-01
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Modified USB flow


#### coreboot: [8.20](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-22
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV


#### coreboot: [8.37](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-11
>     Fix the inconsistant memory map in edk2
>     Disable DPST to fix a flicker with recent kernels
>     Dont let coreboot try to change EC values


#### coreboot: [8.40](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-21
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Let coreboot configure ASPM
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Dont let coreboot try to change variables in the EC memory


#### coreboot: [8.50](https://support.starlabs.systems/kb/firmware/getting-started) 2023-06-21
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop


#### coreboot: [8.90](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot


#### coreboot: [8.95](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-21
>     Rebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update
>     


#### coreboot: [8.99](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-26
>     Remove the option to enable the legacy 8254 timer
>     Rebased on coreboot/main
>     Rebased on edk2/master


#### coreboot: [9.01](https://support.starlabs.systems/kb/firmware/getting-started) 2024-01-11
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Fixed an issue that stopped the scheduler running


#### coreboot: [9.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-01-30
>     Remove the option to enable the legacy 8254 timer
>     Rebased on coreboot/main
>     Rebased on edk2/master


#### coreboot: [9.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-02-12
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Remove the option to turn on when connecting a charger


#### coreboot: [24.02](https://support.starlabs.systems/kb/firmware/getting-started) 2024-02-23
>     Rebased on coreboot 24.02.
>     Rebased on edk2/master.


#### coreboot: [24.03](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Rebased on coreboot 24.02.1
>     Rebased on edk2 master
>     Includes fix for coreboots leap year bug
>     Extended battery reporting


#### coreboot: [24.04](https://support.starlabs.systems/kb/firmware/getting-started) 2024-04-25
>     Add PCI Device ID for the sound card to improve Windows compatibility
>     Dont report the battery serial number to avoid issues with Windows
>     Make PCI Clock Power Management, ASPM and L1 Substates configurable


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

