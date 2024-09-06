
#### coreboot: [24.06](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkV/coreboot/24.06/https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkV/coreboot/24.06/24.06.rom) 2024-06-27
>     Fixed an issue which made the touchscreen intermittently stop responding
>     Improved Bluetooth compatibility
>     Decreased the delay on the power button when an OS is loaded
>     Added an option to set the charging speed
>     Added an option to disable the lid switch


#### coreboot: [24.07](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkV/coreboot/24.07/https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkV/coreboot/24.07/24.07.rom) 2024-07-29
>     Adjust the charging frequency to improve stability
>     Change the touchscreen IRQ to driver to improve stability
>     Add an option to disable waking from suspend by opening the lid
>     Change the default power profile to balanced
>     Adjust the memory training
>     Adjust the Hot Plug Detection for the USB-C ports
>     Optimise GPIO configuration
>     Initialise the wireless card later in the boot process
>     Add an option to limit the charging current
>     Tweaks the timing of the power button
>     Optimise how the temperature is read from the battery
>     Wait for an RDO when starting from G3
>     Speed up CC
>     Remove superfluous CFR options
>     Improve ACPI for CNVi
>     Report tablet docked status
>     Improve the accuracy of the SOC


#### coreboot: [24.08](https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkV/coreboot/24.08/https://github.com/StarLabsLtd/firmware/raw/master/StarLite/MkV/coreboot/24.08/24.08.rom) 2024-09-06
>     Add a new driver for WiFi
>     Add a new driver for Bluetooth
>     Adjust how the ROTM is reported
>     Optimise initial GPIO configuration
>     Improve battery detection
>     Improve battery profile initialisation
>     Make the touchscreen frequency configurable
>     Remove superfluous PD messages
>     Rebased on coreboot 24.08
>     Rebased on edk2/master

