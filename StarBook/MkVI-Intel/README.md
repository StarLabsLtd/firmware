## **StarBook**[MkVI-Intel](https://github.com/StarLabsLtd/firmware/tree/master/StarBook/MkVI-Intel)
#### ami: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami/1.0.0/efi-B6-I.zip) 2022-11-08
>     Initial release of AMI Aptio V for the StarBook Mk VI
>     Based on AMI 5.29


#### ite: [1.00](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.00/efi-B6-I.zip) 2022-11-08
>     Initial release EC firmware for the StarBook Mk V


#### ite: [1.01](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.01/efi-B6-I.zip) 2022-11-08
>     Enabled hybrid power; when using a charger that doesnt supply enough power,
>     the battery will also power the laptop. This will only happen if the battery
>     is charged to 150r more.


#### ami-flashrom: [1.0.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami-flashrom/1.0.0/1.0.0.bin) 2022-11-08
>     Initial release of AMI Aptio V for the StarBook Mk VI
>     Based on AMI 5.29


#### coreboot: [8.18](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.18/coreboot-B6-I.cab) 2022-11-11
>     Initial release firmware for the StarBook Mk VI
>     Based on coreboot 4.18


#### coreboot: [8.19](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.19/coreboot-B6-I.cab) 2022-12-01
>     Rebased on coreboot 4.18
>     Rebased on edk2 master
>     Modified USB flow


#### coreboot: [8.20](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.20/coreboot-B6-I.cab) 2022-12-23
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Reserve the centuary byte
>     Always enumerate uart2
>     Check USB port is compatible before checking PSIV


#### coreboot: [8.21](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.21/coreboot-B6-I.cab) 2023-01-06
>     Disable pin widget 0x17 as its not used
>     Enable pin widget 0x18 for combo jack microphone detection


#### ami: [1.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami/1.1.0/efi-B6-I.zip) 2023-01-11
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### ami-flashrom: [1.1.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami-flashrom/1.1.0/1.1.0.bin) 2023-01-11
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### ami: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami/1.2.0/efi-B6-I.zip) 2023-01-13
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### ami-flashrom: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami-flashrom/1.2.0/1.2.0.bin) 2023-01-13
>     Updated default configuration
>     Enabled mirror flag to update EC along with BIOS


#### coreboot: [8.22](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.22/coreboot-B6-I.cab) 2023-01-16
>     Modified FSP configuration to ensure that virtual wires are configured which
>     fixes SSDs not being initialised all of the time
>     Fix the wrong sleep state being recorded


#### coreboot: [8.23](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.23/coreboot-B6-I.cab) 2023-01-20
>     Enforce Gen 4 SSD support
>     Fix the disable wireless CMOS option
>     Clear PMCON register on power state change
>     Rebase on coreboot 4.19


#### coreboot: [8.24](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.24/coreboot-B6-I.cab) 2023-01-24
>     Modify HPD GPIO to fix issue with USB-C DisplayPort
>     Let coreboot configure the vGPIOs rather than FSP
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs


#### coreboot: [8.25](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.25/coreboot-B6-I.cab) 2023-01-25
>     Enforce Gen 4 SSD support
>     Fix the disable wireless CMOS option
>     Clear PMCON register on power state change
>     Rebase on coreboot 4.19
>     Modify HPD GPIO to fix issue with USB-C DisplayPort
>     Let coreboot configure the vGPIOs rather than FSP
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs


#### coreboot: [8.25](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.25/coreboot-B6-I.cab) 2023-01-25
>     Enforce Gen 4 SSD support
>     Fix the disable wireless CMOS option
>     Clear PMCON register on power state change
>     Rebase on coreboot 4.19
>     Modify HPD GPIO to fix issue with USB-C DisplayPort
>     Let coreboot configure the vGPIOs rather than FSP
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs


#### coreboot: [8.26](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.26/coreboot-B6-I.cab) 2023-02-02
>     Testing update with the following changes
>     Adjust nvme dxe to try and improve compatiblity with third-party SSDs
>     Enabled ASPM
>     Enabled clock request detect
>     Adjust USB tuning to fix suspend issue
>     Adjust enumeration
>     Remove soundwire workaround
>     Dont show SD card reader as a bootable device when there is no SD card


#### coreboot: [8.27](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.27/coreboot-B6-I.cab) 2023-02-06
>     Remove D3Cold from SSDT to fix S3 exit issue
>     Enabled ASPM
>     Enabled clock request detect
>     Adjust USB tuning
>     Adjust enumeration
>     Remove soundwire workaround
>     Dont show SD card reader as a bootable device when there is no SD card


#### coreboot: [8.29](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.29/coreboot-B6-I.cab) 2023-02-17
>     Add a cmos option to enable Hot Plug for the SSD. This slows
>     down coreboot enough for third-party drives to be detected.
>     


#### coreboot: [8.31](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.31/coreboot-B6-I.cab) 2023-02-20
>     Fix the disable wireless CMOS option
>     Fix issue with USB-C port when used with hubs
>     Enabled ASPM
>     Enabled clock request detect
>     Remove D3Cold from SSDT to fix S3 exit issue
>     Remove soundwire workaround
>     Dont show SD card reader as a bootable device when there is no SD card


#### ite: [1.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.03/efi-B6-I.zip) 2023-03-13
>     Improved the reliability of DC Jack charging by modifying it to 800MHz, 3A
>     Avoided charging stalling by continuously polling the SMBus after overcharge protection is active
>     Exposed the behavior of overcharge protection to APCI
>     Set the charge LED to purple when overcharge protection is active
>     Modified fan curve
>     Ensured the trackpad is in the desired state by polling its state every 10ms
>     Set the brightness of the keyboard backlight to the maximum
>     Streamlined the system by removing unused SMM events


#### coreboot: [8.32](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.32/coreboot-B6-I.cab) 2023-03-13
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Remove the hotplug workaround for SSDs and set coreboot to not disable PCI devices
>     Switch to custom FSP based on 3385
>     Disable clock request detect
>     Add a new method for activiting the mirror flag
>     Include EC 1.03
>     Please note - EC 1.03 includes a PD update, and will only update automatically when
>     connected to a DC Jack charger. If you are using a USB-C charger, please update via
>     the EFI Shell
>     


#### ite: [1.04](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.04/efi-B6-I.zip) 2023-03-20
>     Store power related variables in the EC RAM and mirror them to EC memory
>     to avoid memory overflow to mitigate some strange behaviours when the EC
>     memory overflows


#### coreboot: [8.33](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.33/coreboot-B6-I.cab) 2023-03-20
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Switch to custom FSP based on 3385
>     Disable clock request detect
>     Add a new method for activiting the mirror flag
>     Includes EC 1.04
>     Please note - EC 1.04 includes a PD update, and will only update automatically when
>     connected to a DC Jack charger. If you are using a USB-C charger, please update via
>     the EFI Shell


#### ite: [1.05](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.05/efi-B6-I.zip) 2023-03-27
>     Fix the charging voltage to 13.2V
>     Only call Anx when USB-C PD chargers are connected
>     Disable Hybrid-Power when charging current is less that 1536


#### ami-flashrom: [1.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami-flashrom/1.3.0/1.3.0.bin) 2023-03-27
>     Fix the ESRT entry
>     Include an uninforced copy of EC 1.05 


#### ami: [1.3.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami/1.3.0/efi-B6-I.zip) 2023-03-27
>     Fix the ESRT entry
>     Include an uninforced copy of EC 1.05 


#### coreboot: [8.34](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.34/coreboot-B6-I.cab) 2023-03-28
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Includes EC 1.05


#### coreboot: [8.35](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.35/coreboot-B6-I.cab) 2023-03-29
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Includes EC 1.05


#### ite: [1.06](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.06/efi-B6-I.zip) 2023-03-30
>     Strip PD responses to only include valid bits


#### ite: [1.07](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.07/efi-B6-I.zip) 2023-03-31
>     Disable PD requests when a normal USB-C device is connected
>     Account for having two chargers connected
>     Optimise the charging calculations


#### coreboot: [8.36](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.36/coreboot-B6-I.cab) 2023-04-04
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     Stop coreboot trying to enable ASPM as its already enabled
>     Includes EC 1.07


#### ite: [1.10](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.10/efi-B6-I.zip) 2023-04-05
>     Disable Hybrid Power when the RSOC is less than 20 percent
>     Only enable LEARN once when RSOC is greater than 50 percent
>     Dont query unused registers on the BQ24780S


#### ite: [1.11](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.11/efi-B6-I.zip) 2023-04-06
>     Adjust the threshold for Hybrid Power to 1536MA
>     Adjust the threshold for Hybrid Power to be disable to 5 percent RSOC


#### coreboot: [8.37](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.37/coreboot-B6-I.cab) 2023-04-11
>     Correctly disable D3Cold
>     Fix the inconsistant memory map in edk2
>     Enable early caching of TOM
>     Dont let coreboot try to change variables in the EC memory
>     Fix the verb table not loading completely
>     


#### ite: [1.12](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.12/efi-B6-I.zip) 2023-04-14
>     Revert the charging rate to 0.5C
>     Store the state of charging at 0xa0


#### coreboot: [8.38](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.38/coreboot-B6-I.cab) 2023-04-14
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Remove the Intel sound entries from the verb table, to fix an issue
>     resuming from suspend thats initiated by a display manager
>     Hide the P2SB


#### coreboot: [8.39](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.39/coreboot-B6-I.cab) 2023-04-19
>     Final testing release before the stable version
>     Move ramtop outside of checksummed area to fix warning about invalid checksum


#### coreboot: [8.39](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.39/coreboot-B6-I.cab) 2023-04-19
>     Final testing release before the stable version
>     Move ramtop outside of checksummed area to fix warning about invalid checksum


#### coreboot: [8.39](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.39/coreboot-B6-I.cab) 2023-04-19
>     Final testing release before the stable version
>     Move ramtop outside of checksummed area to fix warning about invalid checksum
>     Let coreboot configure ASPM


#### coreboot: [8.40](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.40/coreboot-B6-I.cab) 2023-04-21
>     Rebased on edk2 master
>     Rebased on coreboot master
>     Switch to custom FSP based on 3385
>     Disable clock request detect
>     Let coreboot configure ASPM
>     Speed up boot times by not trying to send EOP when the ME is disabled
>     Speed up boot times by caching ramtop
>     Remove the Intel sound entries from the verb table, to fix an issue
>     resuming from suspend thats initiated by a display manager
>     Dont let coreboot try to change variables in the EC memory
>     Fix the verb table not loading completely
>     Enable OC3 Pin
>     Correct the OC Pin for the left USB Type-A
>     Move the mirror flag to a CMOS option
>     


#### coreboot: [8.41](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.41/coreboot-B6-I.cab) 2023-04-23
>     Adjust the flags for pci_hot_plug to slow down SSD initialisation more


#### ite: [1.13](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.13/efi-B6-I.zip) 2023-05-09
>     Increase the charging speed to 1C when temperatures allow
>     Reduce the amount of variables polled via the SMBus
>     Fixed an issue when batteries would not exit shipping mode
>     


#### coreboot: [8.42](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.42/coreboot-B6-I.cab) 2023-05-25
>     Microcode update from Intel
>     Rebase on edk2 stable tag
>     Rebase on coreboot master
>     Switch to fixed bars
>     Switch to upstream fsp
>     Increase the size of the ramtop entry


#### coreboot: [8.43](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.43/coreboot-B6-I.cab) 2023-05-31
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Moving configurable options to CFR so they can now be changed in edk2
>     rather than via coreboot-configurator
>     Add TPM control to edk2
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix how ASPM is configured in FSP
>     Fix the size allocations in ramtop


#### coreboot: [8.50](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.50/coreboot-B6-I.cab) 2023-06-14
>     Rebase on coreboot 4.20
>     Rebase on edk2 master
>     Move the configurable options to CFR so they can now be changed in
>     edk2 rather than in coreboot-configurator
>     Rename the pci_hot_plug setting to Third Party SSD Support
>     Tidy up the information displayed in edk2
>     Remove the power_on_after_fail option
>     Fix how ASPM is configured in FSP
>     Fix the size allocations in ramtop
>     Switch to fixed bars
>     Switch to upstream fsp


#### coreboot: [8.51](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.51/coreboot-B6-I.cab) 2023-06-22
>     Adjust the S3 flow


#### coreboot: [8.60](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.60/coreboot-B6-I.cab) 2023-07-21
>     Adjust the Type-C Output types
>     Enabled the crashlog
>     Adjust the layout of CFR


#### coreboot: [8.60](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.60/coreboot-B6-I.cab) 2023-07-21
>     Adjust the Type-C Output types
>     Enabled the crashlog
>     Adjust the layout of CFR


#### coreboot: [8.80](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.80/coreboot-B6-I.cab) 2023-08-08
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16


#### ite: [1.16](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.16/efi-B6-I.zip) 2023-08-17
>     Make the charging LED flicker between red and blue when no
>     battery is present
>     Fix the ANX7447 initialisation
>     Optimise the power sequence
>     Adjust the timing of the power button to handle error states


#### coreboot: [8.90](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.90/coreboot-B6-I.cab) 2023-08-22
>     Rebased on upstream edk2
>     Rebased on upstream coreboot
>     Update EC binary to 1.16


#### coreboot: [8.92](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.92/coreboot-B6-I.cab) 2023-08-30
>     Rebased on coreboot 4.21
>     Rebased on upstream edk2


#### coreboot: [8.94](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.94/coreboot-B6-I.cab) 2023-09-07
>     Based on coreboot 4.21
>     Rebased on upstream edk2
>     Improved power reporting
>     Update EC binary to 1.17


#### ite: [1.17](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.17/efi-B6-I.zip) 2023-09-12
>     Adjust the reporting of the power status
>     Further optimise the power sequence


#### coreboot: [8.95](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.95/coreboot-B6-I.cab) 2023-09-21
>     Rebased on coreboot master
>     Rebased on edk2 master
>     Handle EC updates when powering on
>     Revert the 20230808 microcode update
>     Disable GpioOverride to allow FSP to configure ClkReq


#### ite: [1.18](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.18/efi-B6-I.zip) 2023-09-27
>     Fixed an issue where batteries werent initialised


#### coreboot: [8.99](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.99/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/8.99/8.99.rom) 2023-10-26
>     Remove the option to enable the legacy 8254 timer
>     Fix the issue when connecting the charger would power on the laptop
>     Reset the OCM status before initialisation
>     Reduce the frequency of battery status updates to 2W
>     Allow the power button to fall through
>     Rebased on coreboot/main
>     Rebased on edk2/master
>     
>     Fixes #137
>     Fixes #136
>     Fixes #135


#### ite: [1.21](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.21/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/1.21/1.21.rom) 2023-10-26
>     Fix the issue when connecting the charger would power on the laptop
>     Reset the OCM status before initialisation
>     Reduce the frequency of battery status updates to 2W
>     Allow the power button to fall through


#### coreboot: [9.00](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.00/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.00/9.00.rom) 2023-12-07
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
>     
>     Fixes #144
>     Fixes #143
>     Fixes #140
>     Fixes #139


#### coreboot: [9.01](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.01/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.01/9.01.rom) 2024-01-11
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


#### coreboot: [9.02](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.02/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.02/9.02.rom) 2024-01-22
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


#### coreboot: [9.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.03/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.03/9.03.rom) 2024-01-30
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


#### coreboot: [9.04](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.04/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/9.04/9.04.rom) 2024-02-12
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


#### coreboot: [24.02](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/24.02/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/24.02/24.02.rom) 2024-02-23
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
>     Improved S3 resume times.
>     Added options to disable the card reader and fingerprint reader.
>     Changed the default fan profile to Balanced.


#### ami-flashrom: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami-flashrom/1.2.0/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami-flashrom/1.2.0/1.2.0.rom) 2024-03-26
>     Updated the EC to 24.03
>     Fixes batteries not being initialised correctly


#### ami: [1.2.0](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami/1.2.0/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ami/1.2.0/1.2.0.cap) 2024-03-26
>     Updated the EC to 24.03
>     Fixes batteries not being initialised correctly


#### ite: [24.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/24.03/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/ite/24.03/24.03.rom) 2024-03-26
>     Add an indicator for LEARN
>     Make LEARN configurable


#### coreboot: [24.03](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/24.03/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/24.03/24.03.rom) 2024-03-26
>     Rebased on coreboot 24.02.1
>     Rebased on edk2 master
>     Includes fix for coreboots leap year bug
>     Extended battery reporting
>     Improved ASPM detection


#### coreboot: [24.04](https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/24.04/https://github.com/StarLabsLtd/firmware/raw/master/StarBook/MkVI-Intel/coreboot/24.04/24.04.rom) 2024-04-25
>     Add PCI Device ID for the sound card to improve Windows compatibility
>     Dont report the battery serial number to avoid issues with Windows
>     Make PCI Clock Power Management, ASPM and L1 Substates configurable
>     Fix PD 2.0 devices connecting to the USB-C port

