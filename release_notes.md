General Updates:
* Added support for StarBook Mk VIII
* Added persistent embedded-controller diagnostics for post-reset fault analysis
* Added runtime controls for firmware settings

New options:
* [Power Reporting] Option to not tell the OS that the system is not charging with AC connected
* [Automatic Start] Start automatically when a charger is connected, power is restored after a loss or never.
* [Audio Device ID] Interim option to use the old audio IDs, required for Windows until all drivers are updated

Security Updates:
* Improved TPM detection and event-log handoff
* Updated the Secure Boot revocation database

Bug Fixes / Enhancements:
* Fixed regression with PCAT legacy interrupts
* Both ports can be used for empty or absent battery
* Fixed invalid battery capacity data being shown in firmware setup
* Reduced unnecessary boot delays searching for slow USB drives
* Switch to new audio codec IDs, to pick up linux quirks designed to microphone noise
* [StarBook Mk V] Switch to Software Connection Manager to work around linux bug
* [StarFighter Mk I] More power efficient GPIO config
* [StarBook Mk IVr2] More power efficient GPIO config
