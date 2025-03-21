## **StarLite**[MkIV](https://github.com/StarLabsLtd/firmware/tree/master/StarLite/MkIV)
#### coreboot: [8.18](https://support.starlabs.systems/kb/firmware/getting-started) (2022-11-03)
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Improve edk2s compatibility with non-compliant USB drives by:
>     Adjust the MaxPacketLength for USB 1.0 devices from 8 to anything less that 64
>     Adjust the MaxPacketLength for USB 2.0 devices from 32 or 64 to anything less than 512
>     Adjust the MaxPacketLength for USB 3.0 devices from 512 to anything less than 1024
>     Stall after requesting descriptor
>     Reset the port after a status change
>     Handle incorrect PSIV indices
>     Don't check for invalid PSIV

#### coreboot: [8.17](https://support.starlabs.systems/kb/firmware/getting-started) (2022-10-18)
>     Rebased on coreboot 4.18
>     Improve edk2s compatibility with non-compliant USB drives by:
>     Adjust the MaxPacketLength for USB 1.0 devices from 8 to anything less that 64
>     Adjust the MaxPacketLength for USB 2.0 devices from 32 or 64 to anything less than 512
>     Adjust the MaxPacketLength for USB 3.0 devices from 512 to anything less than 1024
>     Stall after requesting descriptor
>     Reset the port after a status change

#### coreboot: [8.15](https://support.starlabs.systems/kb/firmware/getting-started) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Improved resource allocated

#### coreboot: [8.14](https://support.starlabs.systems/kb/firmware/getting-started) (2022-09-20)
>     Communicate with IPC over Trusted Sideband
>     Reset USB ports on error
>     Reset USB Ports before initialisation

#### coreboot: [8.12](https://support.starlabs.systems/kb/firmware/getting-started) (2022-09-16)
>     Remove unused SD Card interrupt
>     Reset the XHCI controller when entering S5 (Fixes shutdown issue)
>     Adjust THERMTRIP GPIO
>     Enable PMC TSTB interface
>     

#### coreboot: [8.09](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-31)
>     Updated edk2 to edk2-stable202208
>     Modified PDRC to fix issue that preventing shutdown

#### coreboot: [8.07](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### Nuvoton: [1.04](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-09)
>     Fixed issue that prevented S5 entry (powering off)

#### coreboot: [8.05](https://support.starlabs.systems/kb/firmware/getting-started) (2022-08-01)
>     Reduced timeout for initialising SD Card Reader
>     Dynamically created CMOS entries so only relavant options are shown
>     Enabled Measured Boot
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check
>     Fixed bug where USB devices weren't recognised in edk2
>     Fixed overlapping BAR from device 1
>     Add PDRC to allow the use of MMCONFIG
>     Update ACPI map
>     Enable verification of the bootblock
>     Compressed Stage1b for faster boot times

#### Nuvoton: [1.03](https://support.starlabs.systems/kb/firmware/getting-started) (2022-07-29)
>     Lower charging current to reduce temperature when charging
>     Added option to use fast charging at Offset (0x18)
>     Added Insert key shortcut that is bound to Fn + Del

#### coreboot: [8.02](https://support.starlabs.systems/kb/firmware/getting-started) (2022-07-12)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt

#### coreboot: [4.17](https://support.starlabs.systems/kb/firmware/getting-started) (2022-06-17)
>     Rebased on coreboot 4.17
>     Built using edk2 202205
>     Enabled Enhanced C-States
>     Fixed bug with USB ports
>     Disabled SATA Port 1
>     Initialise all Heci interfaces
>     Simplified GPIO configuration
>     Enabled SATA Power Optimisations
>     Adjust TCC Offset depending on Power Profile
>     Disabled UFS Device
>     Configure LPC IO Registers
>     Configure BIOS Control register on device 31
>     Open MMIO window for the Nuvoton EC to allow updates

#### Nuvoton: [1.01](https://support.starlabs.systems/kb/firmware/getting-started) (2022-06-01)
>     Modified charging frequency to increase compatibility with PD chargers

#### coreboot: [4.16](https://support.starlabs.systems/kb/firmware/getting-started) (2022-05-30)
>     Regenerate 4.16 with:
>     * Fix for USB ports not working
>     * Partial fix for SD Card Reader not working (SDR50 working, SDR104 not working)

#### coreboot: [4.16](https://support.starlabs.systems/kb/firmware/getting-started) (2022-05-11)
>     Initial release of coreboot for the Lite Mk IV
>     Uses 7 fewer blobs than AMI
>     Reduced power consumption
>     Configurable TDP up to 20W
>     Based on coreboot 4.16

#### AMI: [1.0.0](https://support.starlabs.systems/kb/firmware/getting-started) (2022-05-03)
>     Initial release of AMI Aptio V for the Lite Mk IV
>     Based on AMI 5.29
>     Microcode 0x1b

#### coreboot: [8.19](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-02
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Modified USB flow


#### coreboot: [8.20](https://support.starlabs.systems/kb/firmware/getting-started) 2022-12-22
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV


#### coreboot: [8.24](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-24
>     Rebased on coreboot 4.19
>     Switch to libgfxinit to fix issue with screen flickering on newer kernels
>     Minor USB adjustments
>     Fixed power registers


#### coreboot: [8.37](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-11
>     Fix the inconsistant memory map in edk2
>     Disable DPST to fix a flicker with recent kernels
>     Dont let coreboot try to change EC values


#### coreboot: [8.50](https://support.starlabs.systems/kb/firmware/getting-started) 2023-06-15
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option


#### coreboot: [8.51](https://support.starlabs.systems/kb/firmware/getting-started) 2023-06-22
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Restore the USB reset workaround


#### coreboot: [8.60](https://support.starlabs.systems/kb/firmware/getting-started) 2023-07-21
>     Adjust the layout of CFR
>     Rebase on upstream


#### coreboot: [8.70](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-04
>     Disable PSR
>     Rebase on upstream coreboot
>     Rebase on upstream edk2
>     Restore PCI access to the PMC


#### coreboot: [8.90](https://support.starlabs.systems/kb/firmware/getting-started) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot


#### coreboot: [8.94](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-08
>     Based on coreboot 4.21
>     Rebased on upstream edk2


#### coreboot: [8.99](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-26
>     Remove the option to enable the legacy 8254 timer
>     Rebased on coreboot/main
>     Rebased on edk2/master


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


#### coreboot: [24.10](https://support.starlabs.systems/kb/firmware/getting-started) 2024-11-18
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

