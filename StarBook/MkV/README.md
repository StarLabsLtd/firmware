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


#### coreboot: [8.19](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.19/coreboot-B5.cab) 2022-11-25
>     Fixed an issue with Thunderbolt hubs not initialising USB devices


#### coreboot: [8.20](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.20/coreboot-B5.cab) 2022-12-22
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV


#### coreboot: [8.37](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.37/coreboot-B5.cab) 2023-04-11
>     Fix the inconsistant memory map in edk2
>     Disable DPST to fix a flicker with recent kernels
>     Dont let coreboot try to change EC values


#### coreboot: [8.40](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.40/coreboot-B5.cab) 2023-04-21
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Let coreboot configure ASPM
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Dont let coreboot try to change variables in the EC memory


#### coreboot: [8.43](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.43/coreboot-B5.cab) 2023-05-31
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Moving configurable options to CFR so they can now be changed in edk2
>     rather than via coreboot-configurator
>     Add TPM control to edk2
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop


#### coreboot: [8.50](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.50/coreboot-B5.cab) 2023-06-21
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix the size allocations in ramtop


#### coreboot: [8.60](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.60/coreboot-B5.cab) 2023-07-21
>     Adjust the Type-C Output types
>     Enabled the crashlog
>     Adjust the layout of CFR


#### coreboot: [8.70](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.70/coreboot-B5.cab) 2023-08-03
>     Fixed an issue where laptop wouldnt turn on without power connected
>     Rebased on upstream edk2
>     Rebased on upstream coreboot


#### coreboot: [8.80](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.80/coreboot-B5.cab) 2023-08-08
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16
>     Fixed an issue which caused the power LED to be lit when off


#### coreboot: [8.90](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.90/coreboot-B5.cab) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16
>     Fixed power drain in S5


#### coreboot: [8.92](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.92/coreboot-B5.cab) 2023-08-30
>     Rebased on coreboot 4.21
>     Rebased on upstream edk2
>     Fix the power drain in S3 and S5
>     Added fingerprint reader support


#### coreboot: [8.94](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkV/coreboot/8.94/coreboot-B5.cab) 2023-09-07
>     Based on coreboot 4.21
>     Rebased on upstream edk2
>     Fixed power drain in S5
>     Improved power reporting
>     Update EC binary to 1.17

