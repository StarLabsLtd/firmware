General Updates:
* Improved runtime application of supported firmware settings, without requiring a restart
* Improved firmware and embedded-controller recovery and diagnostics after an unexpected reset

New Options:
* [Charging Priority] Choose Automatic, Charging, or Performance power policy. Automatic reserves adapter power for charging while the battery is more than 20% below its configured target

Security Updates:
* Improved TPM event-log handling, including measurements for EFI boot images and GPT data
* Protected RTC CMOS settings on supported Intel systems

Bug Fixes / Enhancements:
* Improved USB-C and USB hub recovery, including SuperSpeed devices after reset
* Improved Windows device power management for Wi-Fi, Bluetooth, touch, and PCIe devices
* Improved capsule-update reliability and preservation of firmware settings
* Improved firmware setup battery reporting and boot logo recovery
* Improved charging behaviour under heavy system load
* [StarLite Mk V] Corrected accelerometer face-up and face-down orientation
* [StarBook Mk VI AMD] Improved wake from suspend
* [StarFighter] Touchpad settings now apply immediately
* [Horizon / StarBook] Corrected USB port descriptions and Type-C location data
* [Horizon / StarBook Mk VII-U] Corrected 13.4-inch ISO keyboard Backslash and Hash key mapping
