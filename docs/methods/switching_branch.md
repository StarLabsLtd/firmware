---
layout: about
title:  Switching Branch
---

__Please note:__ On the StarLite Mk II and Mk III, to switch back to AMI, this must be done with a hardware programmer.

## Disable BIOS Lock
BIOS Lock must be disabled when switching from the standard AMI (American Megatrends Inc.) firmware to Coreboot. BIOS Lock is only available in later versions of the firmware, so if you don't see it, please update the AMI firmware first. To disable BIOS Lock:

1\. Start with your LabTop turned off\. Turn it on whilst holding the **F2** key to access the BIOS settings.
2\. When the BIOS settings load, use the arrow keys to navigate to the advanced tab\. Here you will see BIOS Lock\.
3\. Press `Enter` to change this setting from **Enabled** to **Disabled**

![Disable BIOS Lock](https://cdn.shopify.com/s/files/1/2059/5897/files/IMG_20210120_094049709_1.jpg?v=1611139567)

4\. Next, press the `F10` key to **Save & Exit** and then `Enter` to confirm.

## **Switching**

Switching branch refers to changing from AMI firmware to Coreboot, or vice versa.

First, check for new firmware files with the below terminal command:

```
fwupdmgr refresh --force
```

Then, to change branch, enter the below terminal command:

```
fwupdmgr switch-branch
```

You can then select which branch you would like to use, by typing in the corresponding number:
![Switch Branch](https://cdn.shopify.com/s/files/1/2059/5897/files/SwitchBranch.png?v=1611138496)
You will be prompted to confirm, press `y` to continue or `n` to cancel.

Once the switch has been completed, you will be prompted to restart.

![Installed Coreboot](https://cdn.shopify.com/s/files/1/2059/5897/files/Complete.png?v=1611138934)
The next reboot can take up to **10 minutes,** do not disconnect the charger. This reboot can occasionally stall, so if it's been longer than 5 minutes and the screen **is** blank, press and hold `Ctrl` + `Alt` + `Delete` and `Power` for 30 seconds.

Once the reboot is complete, that's it - you'll continue to receive updates for whichever branch you are using.

You can switch branch at any time.
