General Updates:
* Updated Intel microcode and Intel FSP binaries, including public IoT FSP builds where available
* Added capsule-on-disk handoff support, including AMD capsule update support
* Added runtime firmware setting support for safe options and Merlin EC persistent storage

New Options:
* AC-connect power-on control
* IBECC support on supported platforms

Security Updates:
* Enabled SMM BIOS write protection on StarLite Mk III/IV
* Improved TPM probing so TPM ACPI tables are only exposed for present TPMs
* Fixed TPM2 event log entry packing for better PCR reconstruction
* Hid Intel PTT when the Management Engine is disabled and added split FSP lockdown policy

Bug Fixes / Enhancements:
* Charge limit settings now persist in EC storage and apply after full power-off (G3)
* [StarFighter] Touchpad report rate can now be applied at runtime
* Improved S4/S5 wake handling and ACPI Time and Alarm Device support
* Improved hibernation resume reliability when firmware wake alarms are enabled
* Fixed USB hub topology, Bluetooth disable, and USB-C data-device descriptions across supported boards
* Fixed Type-C DisplayPort VBT types and tolerated absent Thunderbolt aliases
* Improved low-battery and AC handling on Merlin EC boards
* Improved AMD Cezanne sleep, power-button, and GPIO IRQ handling
* Reduced unnecessary ACPI devices when hardware is absent or disabled
