Rebased on coreboot 24.02.
Rebased on edk2/master.
Enabled PMC muxing to save power.
Removed the option for automatic power-on when connecting to a charger.
Changed PECI to IRQ-driven operation for improved efficiency.
Emptied the keyboard buffer more quickly.
Switched the compiler from Keil to SDCC.
Enabled automatic power-on after an EC update.
Fixed an issue that prevented the scheduler from running.
Reduced false over-current protection warnings.
Only wake from sleep when the lid is closed with an active PD connection.
Optimised the Keyboard Controller initialization.
Added a simple cbmem-style console that uses the PMC interface.
Adjusted the muxing to prevent coreboot from disconnecting displays on boot.
Optimised i2c operations.
Improved S3 resume times.
Added options to disable the card reader and fingerprint reader.
Changed the default fan profile to Balanced.
