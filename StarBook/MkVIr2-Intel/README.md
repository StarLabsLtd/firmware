
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

