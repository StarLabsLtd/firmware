General Updates:
- Reworked performance profiles for race to idle
- Added options to disable certain devices
- Removed the option to enable the 8254 timer
- Enhanced wireless driver, with support for RTD3
- Limit the PL4 to 1.0C
- FSP update
- Intel Microcode update
- Disabled RamTop optimisation
- [StarLite Mk V] Made it possible to configure the memory speed
- [StarLite Mk V] Make the i2c speed configurable
Security:
- Added support for SecureBoot (no keys will be enrolled in this release)
Bug Fixes:
- Fixed an issue with the DFP driver that prevented it from loading
- Fixed an issue with the TPM driver that prevented it from loading
- Fixed memory allocation issue with fTPMs
- Fixed an issue with the discharge rate reporting
- Fixed the maximum C-State
- [StarLite Mk V] Fixed an issue where charging was intermittent
- [StarLite Mk V] Fixed an issue where a depleted battery could not be charged
- [Byte Mk II] Fixed issue where DisplayPort monitors were not connected
- [StarFighter Mk I] Fixed backslash key not working
- [StarFighter Mk I] Fixed issue where certain charges wouldnt work
