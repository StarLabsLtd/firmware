Rebased on edk2 master
Rebased on coreboot master
Remove the hotplug workaround for SSDs and set coreboot to not disable PCI devices
Switch to custom FSP based on 3385
Disable clock request detect
Add a new method for activiting the mirror flag
Include EC 1.03
Please note - EC 1.03 includes a PD update, and will only update automatically when
connected to a DC Jack charger. If you are using a USB-C charger, please update via
the EFI Shell

