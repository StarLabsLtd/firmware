Rebased on edk2 master
Rebased on coreboot master
Switch to custom FSP based on 3385
Disable clock request detect
Let coreboot configure ASPM
Speed up boot times by not trying to send EOP when the ME is disabled
Speed up boot times by caching ramtop
Remove the Intel sound entries from the verb table, to fix an issue
resuming from suspend thats initiated by a display manager
Dont let coreboot try to change variables in the EC memory
Fix the verb table not loading completely
Enable OC3 Pin
Correct the OC Pin for the left USB Type-A
Move the mirror flag to a CMOS option

