---
layout: about
title:  Magic
---

The "mirror flag" is simply magic.

The BIOS, be it coreboot or AMI, includes a copy of the ITE firmware for that model. If
the version of the firmware that the EC is running doesn't match the version in the BIOS,
it'll update itself automatically from the BIOS.

If a version mismatch is detected, it'll do this on the next shutdown. All you need to do
is __nothing__ - the hardware will go unresponsive for approximately 60 seconds, and then
it'll automatically power on (it needs to to complete the update), and thats it!

The only caveat is that you can't __(and shouldn't)__ update the EC via any other method;
doing so will very likely corrupt the firmware.
