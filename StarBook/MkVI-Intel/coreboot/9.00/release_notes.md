Rebased on coreboot 4.22
Rebased on edk2/master
Enabled PMC muxing
Remove the option to turn on when connecting a charger
Make PECI IRQ driven
Empty the keyboard buffer faster
Switch the compiler from Keil to SDCC
Automatically power on after FMF
Fixed an issue that stopped the scheduler running
Reduced false over-current protection warnings
Only wakeup when closing the lid with CC1 and CC2

Fixes #144
Fixes #143
Fixes #140
Fixes #139
