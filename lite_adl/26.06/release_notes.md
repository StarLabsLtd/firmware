General Updates: 
* Added support for AMD Cezanne models (Byte Mk I and StarBook Mk VI)

Bug Fixes / Enhancements:
* Improved capsule update reliability
* Fixed hibernation failures caused by inconsistent payload memory maps
* Ignored malformed OS-created UEFI variable records instead of blocking boot
* Avoided EDK2 serial port reinitialisation
* Dropped shell networking when networking support is disabled
* Disable TPM1
* Fixed PCR0 Reconstruction
* Improved HiDPI logo, console text, and graphics handoff handling
* Reduced false CPU throttling from charge-controller PROCHOT while preserving brown-out protection
* Improved low battery handling with a warning splash, adjusted wake threshold, and graceful critical battery shutdown
* Dynamically set PL4 from charger and battery state
* Fixed memory speed changes reusing stale training data
* Fixed ANX7447 dead battery charging
* Added Fn+F hot key for 100% fan duty
* Stored the serial number in firmware variables
* [StarFighter] Reduced touchpad startup delay and fixed touchpad settings not being applied
* [StarLite Mk V] Improved battery free operation and fixed auto-rotation on Ubuntu
* [StarBook MkVIr2-Intel] Fixed blue sleep LED breathing
* Improved keyboard scan debounce to reduce ghosting and missed keys
