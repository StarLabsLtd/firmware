## **StarLite**[MkIV](https://github.com/StarLabsLtd/firmware/tree/master/StarLite/MkIV)
#### coreboot: [8.18](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.18/efi-I4.zip) (2022-11-03)
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

#### coreboot: [8.17](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.17/efi-I4.zip) (2022-10-18)
>     Rebased on coreboot 4.18
>     Improve edk2s compatibility with non-compliant USB drives by:
>     Adjust the MaxPacketLength for USB 1.0 devices from 8 to anything less that 64
>     Adjust the MaxPacketLength for USB 2.0 devices from 32 or 64 to anything less than 512
>     Adjust the MaxPacketLength for USB 3.0 devices from 512 to anything less than 1024
>     Stall after requesting descriptor
>     Reset the port after a status change

#### coreboot: [8.15](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.15/efi-I4.zip) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Improved resource allocated

#### coreboot: [8.14](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.14/efi-I4.zip) (2022-09-20)
>     Communicate with IPC over Trusted Sideband
>     Reset USB ports on error
>     Reset USB Ports before initialisation

#### coreboot: [8.12](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.12/efi-I4.zip) (2022-09-16)
>     Remove unused SD Card interrupt
>     Reset the XHCI controller when entering S5 (Fixes shutdown issue)
>     Adjust THERMTRIP GPIO
>     Enable PMC TSTB interface
>     

#### coreboot: [8.09](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.09/efi-I4.zip) (2022-08-31)
>     Updated edk2 to edk2-stable202208
>     Modified PDRC to fix issue that preventing shutdown

#### coreboot: [8.07](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.07/efi-I4.zip) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### Nuvoton: [1.04](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/Nuvoton/1.04/efi-i4.zip) (2022-08-09)
>     Fixed issue that prevented S5 entry (powering off)

#### coreboot: [8.05](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.05/efi-I4.zip) (2022-08-01)
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

#### Nuvoton: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/Nuvoton/1.03/efi-i4.zip) (2022-07-29)
>     Lower charging current to reduce temperature when charging
>     Added option to use fast charging at Offset (0x18)
>     Added Insert key shortcut that is bound to Fn + Del

#### coreboot: [8.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/8.02/efi-I4.zip) (2022-07-12)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt

#### coreboot: [4.17](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/4.17/efi-I4.zip) (2022-06-17)
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

#### Nuvoton: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/Nuvoton/1.01/efi-i4.zip) (2022-06-01)
>     Modified charging frequency to increase compatibility with PD chargers

#### coreboot: [4.16](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/4.16/efi-I4.zip) (2022-05-30)
>     Regenerate 4.16 with:
>     * Fix for USB ports not working
>     * Partial fix for SD Card Reader not working (SDR50 working, SDR104 not working)

#### coreboot: [4.16](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/coreboot/4.16/efi-I4.zip) (2022-05-11)
>     Initial release of coreboot for the Lite Mk IV
>     Uses 7 fewer blobs than AMI
>     Reduced power consumption
>     Configurable TDP up to 20W
>     Based on coreboot 4.16

#### AMI: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIV/AMI/1.0.0/efi-I4.zip) (2022-05-03)
>     Initial release of AMI Aptio V for the Lite Mk IV
>     Based on AMI 5.29
>     Microcode 0x1b