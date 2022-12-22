## **StarLabTop**[MkIII](https://github.com/StarLabsLtd/firmware/tree/master/StarLabTop/MkIII)
#### coreboot: [8.15](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.15/efi-L3.zip) (2022-10-04)
>     Improved handling of USB devices in edk2
>     Improved resource allocated

#### coreboot: [8.09](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.09/efi-L3.zip) (2022-08-30)
>     Adjust the Bluetooth interface to correctly enable the Bluetooth
>     interface for the Intel 8265.

#### coreboot: [8.07](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.07/efi-L3.zip) (2022-08-15)
>     Rebased edk2 on upstream edk2
>     Disabled debug output to decrease boot time

#### coreboot: [8.06](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.06/efi-L3.zip) (2022-08-12)
>     Add coreboot GUID to allow direct updates
>     Fix issue with speakers not outputting sound

#### coreboot: [8.05](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.05/efi-L3.zip) (2022-08-08)
>     Reduced timeout for initialising SD Card Reader
>     Dyamically created CMOS entries so only relevant options are shown
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.05](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.05/efi-L3.zip) (2022-08-01)
>     Reduced timeout for initialising SD Card Reader
>     Dynamically created CMOS entries so only relavant options are shown
>     Enabled Measured Boot
>     Removed unused CryptoLib from edk2
>     Fixed relocation address logic check

#### coreboot: [8.02](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.02/efi-L3.zip) (2022-07-04)
>     Disabled edk2 serial debug support for faster boot times
>     Configured PCIe Base Address in edk2 to avoid auto-config
>     Increase setup resolution to full screen
>     Adjusted spacing for boot prompt

#### coreboot: [8.00](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/8.00/efi-L3.zip) (2022-06-16)
>     Rebased on coreboot 4.17
>     Built using edk2 202205
>     Fixed issue with sound not working
>     Adjust TCC Offset depending on Power Profile

#### coreboot: [7.98](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/7.98/efi-L3.zip) (2022-04-27)
>     Fixed issue with sound not working
>     Rebase on upstream

#### coreboot: [7.96](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/7.96/efi-L3.zip) (2022-03-14)
>     Store EC values when entering S3, S4 and S5
>     Dont update CMOS values at runtime
>     Use Mutex for communication between BIOS and EC
>     Save EC preferences when rebooting
>     Disable legacy timer by default
>     Optimise suspend functions
>     Disconnect unused GPIO's
>     Add comments for GPIOs
>     Remove display from devicetree

#### coreboot: [7](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/7/efi-L3.zip) (2021-10-07)
>     Rebase on upstream
>     Fixed bug on upgrading to 6 when wireless, webcam and microphone could be disabled
>     Fixed second ACPI backlight control
>     Support to control fan and max charge level (Requires EC support)
>     Updated verb table to improve microphone input and speakers

#### ITE: [3.12](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/ITE/3.12/efi-L3.zip) (2021-09-23)
>     New option to reverse Ctrl + Fn keys

#### ITE: [3.12](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/ITE/3.12/efi-L3.zip) (2021-09-23)
>     New option to reverse Ctrl + Fn keys

#### coreboot: [6](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/6/efi-L3.zip) (2021-09-22)
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

#### coreboot: [5](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/5/efi-L3.zip) (2021-09-22)
>     Rebased on upstream
>     Added CMOS option to enable Intel ME
>     Fixed bug where ECOS wasn't stored on S3
>     Fixed bug where S3 wouldn't resume
>     Improved battery ACPI
>     Removed delay for charger connect/disconnect

#### coreboot: [4](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/4/efi-L3.zip) (2021-09-22)
>     Rebase on upstream
>     Changed Tianocore to upp_next branch
>     Configured CMOS to allow settings to be changed with coreboot-configurator application
>     Disabled VBR
>     Fixed bug where Fn Lock state lost on reboot
>     Enabled EVAC register in EC asl

#### coreboot: [3](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/coreboot/3/efi-L3.zip) (2021-09-22)
>     Updated libgfxinit configuration
>     Rebase on upstream
>     Adjusted memory handling
>     Updated VBT ID's
>     Removed unused ACPI
>     Disabled S4

#### AMI: [2.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/AMI/2.0.0/efi-L3.zip) (2021-09-22)
>     Enabled BLE

#### AMI: [1.6.0](https://github.com/StarLabsLtd/firmware/raw/master/StarLabTop/MkIII/AMI/1.6.0/efi-L3.zip) (2021-09-22)
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

#### coreboot: [8.18](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIII/coreboot/8.18/coreboot-L3.cab) 2022-11-11
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


#### coreboot: [8.19](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIII/coreboot/8.19/coreboot-L3.cab) 2022-12-01
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Modified USB flow


#### coreboot: [8.20](https://github.com/StarLabsLtd/firmware/raw/master/LabTop/MkIII/coreboot/8.20/coreboot-L3.cab) 2022-12-22
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV

