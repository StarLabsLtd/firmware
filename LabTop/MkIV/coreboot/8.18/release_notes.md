Rebased on coreboot 4.18
Rebased on edk2 master
Reserved the centuary byte
Enabled mirror flag to automatically update the EC
Improve edk2s compatibility with non-compliant USB drives by:
Adjust the MaxPacketLength for USB 1.0 devices from 8 to anything less that 64
Adjust the MaxPacketLength for USB 2.0 devices from 32 or 64 to anything less than 512
Adjust the MaxPacketLength for USB 3.0 devices from 512 to anything less than 1024
Stall after requesting descriptor
Reset the port after a status change
Handle incorrect PSIV indices
Dont check for invalid PSIV
