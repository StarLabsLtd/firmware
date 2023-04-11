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

