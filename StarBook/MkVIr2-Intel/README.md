
#### ami-flashrom: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/ami-flashrom/1.0.0/1.0.0.bin) 2023-09-08
>     Initial release firmware for the StarBook Mk VIr2
>     Based on AMI 5.29


#### coreboot: [8.94](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/8.94/coreboot-B62-I.cab) 2023-09-08
>     Initial release coreboot firmware for the StarBook Mk VIr2
>     Based on coreboot 4.21
>     Based on edk2 master


#### ami: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/ami/1.0.0/efi-B62-I.zip) 2023-09-08
>     Initial release firmware for the StarBook Mk VIr2
>     Based on AMI 5.29


#### coreboot: [8.95](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/8.95/coreboot-B62-I.cab) 2023-09-21
>     Rebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update
>     Disable GpioOverride to allow FSP to configure ClkReq


#### coreboot: [8.99](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/8.99/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/8.99/8.99.rom) 2023-10-26
>     Remove the option to enable the legacy 8254 timer
>     Fix the issue when connecting the charger would power on the laptop
>     Reduce the frequency of battery status updates to 2W
>     Allow the power button to fall through
>     Rebased on coreboot/main
>     Rebased on edk2/master


#### coreboot: [9.00](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.00/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.00/9.00.rom) 2023-12-07
>     Rebased on coreboot 4.22
>     Rebased on edk2/master
>     Enabled PMC muxing
>     Remove the option to turn on when connecting a charger
>     Make PECI IRQ driven
>     Empty the keyboard buffer faster
>     Switch the compiler from Keil to SDCC
>     Automatically power on after FMF
>     Only wakeup when closing the lid with CC1 and CC2


#### coreboot: [9.01](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.01/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.01/9.01.rom) 2024-01-11
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


#### coreboot: [9.02](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.02/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.02/9.02.rom) 2024-01-22
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


#### coreboot: [9.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.03/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.03/9.03.rom) 2024-01-30
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


#### coreboot: [9.04](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.04/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/9.04/9.04.rom) 2024-02-12
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


#### coreboot: [24.02](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/24.02/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/24.02/24.02.rom) 2024-02-23
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


#### coreboot: [24.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/24.03/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/coreboot/24.03/24.03.rom) 2024-03-26
>     Rebased on coreboot 24.02.1
>     Rebased on edk2 master
>     Includes fix for coreboots leap year bug
>     Extended battery reporting
>     Add an indicator for LEARN
>     Make LEARN configurable
>     Improved ASPM detection


#### ami-flashrom: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/ami-flashrom/1.2.0/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVIr2-Intel/ami-flashrom/1.2.0/1.2.0.rom) 2024-03-26
>     Updated the EC to 24.03
>     Fixes batteries not being initialised correctly

