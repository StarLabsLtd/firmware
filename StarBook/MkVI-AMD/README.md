## **StarBook**[MkVI-AMD](https://github.com/StarLabsLtd/firmware/tree/master/StarBook/MkVI-AMD)
#### ami: [1.0.0](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
>     Initial release of AMI Aptio V for the StarBook Mk VI
>     Based on AMI 5.29


#### ami: [1.0.1](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
>     Modified boot flow
>     Adjusted PSP configuraton to not lock out SPI access registers


#### ami: [1.0.2](https://support.starlabs.systems/kb/firmware/getting-started) 2022-11-08
>     Disabled ASPM due to limited support in certain distributions
>     Updated S3 flow


#### ami: [1.0.3](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-16
>     Update the ACPI for the PS2 controller to fix an issue when the
>     keyboard would not respond with certain kernels


#### ami: [1.0.4](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-16
>     Modify the threshold for turtle mode from 25 percent battery to 8 percent battery
>     


#### ami: [1.1.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-01-19
>     Modified version number format
>     Updated ACPI for better compatibility with newer kernels


#### ami: [1.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-02-08
>     Add Realtek PXE driver
>     Update the fan curve


#### ami: [1.3.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-02-20
>     Enable S2idle support
>     Add the option to configure UMA size


#### ami: [1.4.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-20
>     Update AGESA to 1.0.0.D
>     Update AmiModulePkg to 1.165
>     Fixes issue with S3 exit


#### ami: [1.5.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-28
>     Disable S2idle
>     Disable ASPM for 2230 PCIe slot


#### ami-flashrom: [1.5.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-03-28
>     Disable S2idle
>     Disable ASPM for 2230 PCIe slot


#### ami: [1.6.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-11
>     Update the EC to include a new fan curve
>     Bump the version number


#### ami-flashrom: [1.6.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-11
>     Update the EC to include a new fan curve
>     Bump the version number


#### ami: [1.7.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-14
>     Update the PSP binaries
>     Fix the subsystem ID of the sound card


#### ami-flashrom: [1.7.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-04-14
>     Update the PSP binaries
>     Fix the subsystem ID of the sound card


#### ami: [1.8.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-14
>     Update PI to 1.0.0.fa
>     Expose the behaviour of the overcharge protection
>     Improved power reporting


#### ami: [1.10.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-09-28
>     Update PI to 1.0.0.fa
>     Expose the behaviour of the overcharge protection
>     Improved power reporting


#### ami-flashrom: [1.12.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-09
>     Update PI to 1.0.0.fa
>     Expose the behaviour of the overcharge protection
>     Improved power reporting
>     Improved charger detection speed
>     Improved banking
>     Improved XLT speed
>     Flicker the power LED when changing power states
>     Minor power savings


#### ami: [1.12.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-09
>     Update PI to 1.0.0.fa
>     Expose the behaviour of the overcharge protection
>     Improved power reporting
>     Improved charger detection speed
>     Improved banking
>     Improved XLT speed
>     Flicker the power LED when changing power states
>     Minor power savings


#### ami-flashrom: [1.13.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-17
>     Update PI to 1.0.0.fa
>     Expose the behaviour of the overcharge protection
>     Improved power reporting
>     Improved charger detection speed
>     Improved banking
>     Improved XLT speed
>     Flicker the power LED when changing power states
>     Minor power savings
>     Clear the anx memory when latching


#### ami: [1.13.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-17
>     Update PI to 1.0.0.fa
>     Expose the behaviour of the overcharge protection
>     Improved power reporting
>     Improved charger detection speed
>     Improved banking
>     Improved XLT speed
>     Flicker the power LED when changing power states
>     Minor power savings
>     Clear the anx memory when latching


#### ami-flashrom: [1.14.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-27
>     djust the notifications to the GPU
>     Reset the OCM status before initialisation
>     Reduce the frequency of battery status updates to 2W


#### ami: [1.14.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-10-27
>     djust the notifications to the GPU
>     Reset the OCM status before initialisation
>     Reduce the frequency of battery status updates to 2W


#### ami-flashrom: [1.16.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-11-07
>     Call ALIB via a Q Event
>     Dont notify AFN4 of state changes


#### ami: [1.16.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-11-07
>     Call ALIB via a Q Event
>     Dont notify AFN4 of state changes


#### ami-flashrom: [1.16.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-12-08
>     Call ALIB via a Q Event Dont notify AFN4 of state changes


#### ami: [1.16.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-12-08
>     Call ALIB via a Q Event Dont notify AFN4 of state changes


#### ami-flashrom: [1.16.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-12-13
>     Update PI to 1.0.0.fa
>     Call ALIB via a Q Event Dont notify AFN4 of state changes
>     Disable Force Mirror Flag


#### ami: [1.16.0](https://support.starlabs.systems/kb/firmware/getting-started) 2023-12-13
>     Update PI to 1.0.0.fa
>     Call ALIB via a Q Event Dont notify AFN4 of state changes
>     Disable Force Mirror Flag


#### ami-flashrom: [24.3.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Fixed an issue that stopped the backlight working after S3
>     Enabled support for PD 2.0 chargers
>     Disable USB power in S3
>     Improved battery reporting


#### ami: [24.3.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-03-26
>     Fixed an issue that stopped the backlight working after S3
>     Enabled support for PD 2.0 chargers
>     Disable USB power in S3
>     Improved battery reporting


#### ami-flashrom: [24.4.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-04-26
>     Fixed the EC not being configured to match to the BIOS Settings
>     Updated IPV6 modules


#### ami: [24.4.0](https://support.starlabs.systems/kb/firmware/getting-started) 2024-04-26
>     Fixed the EC not being configured to match to the BIOS Settings
>     Updated IPV6 modules


#### ami-flashrom: [25.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2025-02-25
>     General Updates:
>     * Updated AGESA
>     * Updated PSP
>     * Adjusted charging frequency for more stable charging
>     * More consistant power control
>     


#### ami: [25.2.0](https://support.starlabs.systems/kb/firmware/getting-started) 2025-02-25
>     General Updates:
>     * Updated AGESA
>     * Updated PSP
>     * Adjusted charging frequency for more stable charging
>     * More consistant power control
>     


#### ami-flashrom: [25.4.0](https://support.starlabs.systems/kb/firmware/getting-started) 2025-06-11
>     General Updates:
>     * Update AGESA to the latest version
>     * Make the VRAM allocation configurable
>     * Fix issue that prevented the batteries from charging
>     
>     

