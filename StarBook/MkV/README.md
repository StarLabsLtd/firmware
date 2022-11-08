## **StarBook**[MkV](https://github.com/StarLabsLtd/firmware/tree/master/StarBook/MkV)
#### coreboot: [8.15](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.15/efi-B5.zip) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Switched to open-source libgfxinit
>     Improved resource allocated
>     Disabled XDCI
>     Prefetch memory above 4G
>     Enabled PMC muxing for reduced power consumption

#### coreboot: [8.07](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.07/efi-B5.zip) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### coreboot: [8.05](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.05/efi-B5.zip) (2022-08-01)
>     Reduced timeout for initialising SD Card Reader
>     Dynamically created CMOS entries so only relevant options are shown
>     Enabled Measured Boot
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.02](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.02/efi-B5.zip) (2022-07-04)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt
>     

#### coreboot: [8.00](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.00/efi-B5.zip) (2022-06-16)
>     Rebased on coreboot 4.17
>     Built using edk2 202205
>     Disable unused USB 3.0 port 2
>     Adjust TCC Offset depending on Power Profi
>     

#### coreboot: [7.96](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7.96/efi-B5.zip) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime

#### coreboot: [7.95](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7.95/efi-B5.zip) (2022-03-07)
>     Pull SSD Pin to low when entering S3 - saves power when suspended
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions

#### coreboot: [7.91](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7.91/efi-B5.zip) (2022-01-06)
>     Update GPIOs
>     Update CNVi GPIOs
>     Update trackpad GPIO
>     Enable TPM_IRQ GPIO
>     Don't configure ESPI GPIOs
>     Disconnect unused GPIO's
>     Add comments for GPIOs
>     Remove display from devicetree
>     Apply EC settings when suspending
>     Unify EC and CMOS names
>     Adjust KBL configuration
>     Enable I2C4
>     Convert EC_GPE_SCI to Kconfig

#### ITE128: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.03/efi-B5.zip) (2021-12-22)
>     Fixed issue where keyboard backlight wouldn't turn off when entering S3 or turning off

#### ITE128: [1.02](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.02/efi-B5.zip) (2021-12-10)
>     Update Normal and Quiet fan curves to delay start until 65 degree's. Performance mode is unchanged.

#### AMI: [2](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/AMI/2/efi-B5.zip) (2021-11-08)
>     Updated Verb Table
>     New option to set the maximum battery charge level
>     Fixed ACPI error
>     Remember Fn Lock state between reboot

#### coreboot: [7](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/7/efi-B5.zip) (2021-10-08)
>     Initial release firmware for the StarBook Mk V
>      
>     coreboot:			4.14
>     CSME:				15.0.30.1776
>     Microcode:			0x88
>     FSP:				A.0.51.31
>      
>     Configurable options:
>     Hyper-Threading:		Enable / Disable
>     Intel VT-d:			Enable / Disable
>     Power Profile:			Power Saving / Balanced / Performance
>     ME State:			Enable / Disable
>     Wireless:			Enable / Disable
>     Microphone:			Enable / Disable
>     Clock Gating:			Enable / Disable
>     Keyboard Backlight Timeout:	30 seconds / 1 minute / 3 minutes / 5 minutes / Never
>     Fn Ctrl Swap:			Enable / Disable
>      
>     Power Profiles are as below:
>     Performance:			PL1:         35W
>     				PL2:         64W
>     				TurboBoost:  Enabled
>     Balanced:			PL1:         15W
>     				PL2:         35W
>     				TurboBoost:  Enabled
>     Power Saving:			PL1:         15W
>     				PL2:         15W
>     				TurboBoost:  Disabled

#### ITE128: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.01/efi-B5.zip) (2021-10-08)
>     Added support to select maximum charge percentage
>     	

#### ITE128: [1.00](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/ITE128/1.00/efi-B5.zip) (2021-10-08)
>     Initial release firmware for the StarBook Mk V

#### AMI: [1](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/AMI/1/efi-B5.zip) (2021-09-27)
>     Initial release firmware for the StarBook Mk V
>     
>     AMI:				5.29
>     CMSE:				15.0.30.1776
>     Microcode:			0x88
>     FSP:				A.0.51.31
>     
>     Configurable options:
>     Hyper-Threading:		Enable / Disable
>     Intel VT-d:			Enable / Disable
>     Power Profile:			Power Saving / Balanced / Performance
>     ME State:			Enable / Disable
>     Wireless:			Enable / Disable
>     Microphone:			Enable / Disable
>     Clock Gating:			Enable / Disable
>     Keyboard Backlight Timeout:	30 seconds / 1 minute / 3 minutes / 5 minutes / Never
>     Fn Ctrl Swap:			Enable / Disable
>     
>     Power Profiles are as below:
>     Performance:			PL1:		35W
>     				PL2:		64W
>     				TurboBoost:	Enabled
>     Balanced:			PL1:		15W
>     				PL2:		35W
>     				TurboBoost:	Enabled
>     Power Saving:			PL1:		15W
>     				PL2:		15W
>     				TurboBoost:	Disabled

\#\#\#\# coreboot: [8.18](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.18/coreboot-B5.cab) 2022-11-08
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Reserved the centuary byte
>     Enabled mirror flag to automatically update the EC
>     Improve edk2s compatibility with non-compliant USB drives by:
>     Adjust the MaxPacketLength for USB 1.0 devices from 8 to anything less that 64
>     Adjust the MaxPacketLength for USB 2.0 devices from 32 or 64 to anything less than 512
>     Adjust the MaxPacketLength for USB 3.0 devices from 512 to anything less than 1024
>     Stall after requesting descriptor
>     Reset the port after a status change
>     Handle incorrect PSIV indices
>     Dont check for invalid PSIV
>     

