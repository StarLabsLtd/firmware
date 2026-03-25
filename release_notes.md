General Updates:
* Added capsule update support, with graphical update progress, more reliable flashing, and better preservation of existing settings and unchanged firmware data
* Reworked the firmware setup menu into a cleaner Settings-style layout, with clearer Boot and Security sections

New Options:
* Configurable boot timeout
* [StarFighter] Touchpad Vibration Intensity
* [StarFighter] Touchpad Click Force
* [StarFighter] Touchpad Release Force
* [StarFighter] Touchpad Tracking Speed
* [StarFighter] Speaker Idle

Security Updates:
* Added BIOS password protection
* Added TCG OPAL storage support for compatible NVMe drives, including S3 unlock support

Bug Fixes / Enhancements:
* Added better HiDPI scaling in firmware setup and improved graphics handoff, helping hibernation (S4) behave more reliably
* Corrected panel timing values against panel datasheets across current Star Labs platforms
* Increased PWM frequencies across supported boards to reduce flicker
* Added staged NVMe power sequencing on supported platforms so third-party and slower-to-initialize drives initialise more reliably
* [StarFighter] Enabled the card reader in firmware
* [StarLite Mk V / Horizon] Increased speaker output configuration to the intended 2.5W path
* Improved keyboard scan debounce handling so new key presses are detected more consistently
* Improved S3 power LED breathing behaviour for smoother and more consistent transitions
* Simplified reduced-brightness handling for the LEDs
