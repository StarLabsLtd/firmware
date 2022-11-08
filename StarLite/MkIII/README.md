## **StarLite**[MkIII](https://github.com/StarLabsLtd/firmware/tree/master/StarLite/MkIII)
#### coreboot: [8.05](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/coreboot/8.05/efi-I3.zip) (2022-08-01)
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

#### coreboot: [8.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/coreboot/8.02/efi-I3.zip) (2022-07-12)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt
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
>     Known issues: Suspend will not resume

#### ITE: [1.14](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.14/efi-I3.zip) (2022-06-16)
>     Bind F10 function key to Q events Q60 and Q61. Event is alternated based on
>     the value of 0x14, 0x11 will send Q60 and 0x22 will send Q61. This corresponds
>     to CB:64465 to pull GPIO_177 to low and disable the trackpad.

#### coreboot: [4.16](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/coreboot/4.16/efi-I3.zip) (2022-05-30)
>     Regenerate 4.16 release with:
>     * Fix for right USB port not working
>     * Fix for Lite not powering on without the charger connected

#### ITE: [1.13](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.13/efi-I3.zip) (2022-05-20)
>     Bind F10 function key to Q events Q60 and Q61. Event is alternated based on
>     the value of 0x14, 0x11 will send Q60 and 0x22 will send Q61. This corresonds
>     to CB:64465 to pull GPIO_177 to low and disable the trackpad.

#### coreboot: [4.16](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/coreboot/4.16/efi-I3.zip) (2022-05-11)
>     Initial release of coreboot for the Lite Mk III
>     Uses 7 fewer blobs than AMI
>     Reduced power consumption
>     Configurable TDP up to 20W
>     Based on coreboot 4.16

#### AMI: [2.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/2.1.0/efi-I3.zip) (2022-02-18)
>     Updated SGX allocations
>     Updated Microcode
>     Improved Charger configuration
>     Updated SGX configuration
>     Improved DPTF configuration
>     Enabled dito
>     Updated CSE

#### AMI: [64.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/64.0.0/efi-I3.zip) (2021-12-22)
>     Release version 64 which allows for IWFI rollback.

#### AMI: [2.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/2.1.0/efi-I3.zip) (2021-09-22)
>     Updated SGX allocations
>     Updated Microcode
>     Improved Charger configuration
>     Updated SGX configuration
>     Improved DPTF configuration
>     Enabled dito
>     Updated CSE

#### ITE: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.03/efi-I3.zip) (2021-09-22)
>     Modified charging frequency to reduce noise

#### AMI: [1.4.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.4.0/efi-I3.zip) (2021-09-22)
>     Updated DPTF

#### AMI: [1.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.3.0/efi-I3.zip) (2021-09-22)
>     Updated Verb Table
>     Updated SSD initialisation

#### ITE: [1.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.02/efi-I3.zip) (2021-09-22)
>     Improved compatibility with third-party chargers
>     Fixed keyboard backlight control
>     Adjusted trackpad handler

#### ITE: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.01/efi-I3.zip) (2021-09-22)
>     Fixed keyboard backlight timeout

#### AMI: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.2.0/efi-I3.zip) (2021-09-22)
>     Updated Verb Table
>     Optimised Power Management
>     Removed PL1 Limitation
>     Updated Secure Boot Keys

#### AMI: [1.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.1.0/efi-I3.zip) (2021-09-22)
>     Updated wireless configuration

#### ITE: [1.00](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/ITE/1.00/efi-I3.zip) (2021-09-22)
>     Initial release firmware for the StarLite Mk III

#### AMI: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkIII/AMI/1.0.0/efi-I3.zip) (2021-09-22)
>     Initial release firmware for the StarLite Mk III
