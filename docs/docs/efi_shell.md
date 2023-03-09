## EFI Shell

**Please note:** You will require a USB Flash Drive that is 8MB or larger to perform this update. EFI Shell updates are only for AMI and dedicated ITE or Nuvoton updates.

Download the BIOS or Firmware file. The latest versions can be found [here](https://github.com/StarLabsLtd/firmware).

Right-click the download, and select Extract Here.

![undefined](https://cdn.shopify.com/s/files/1/2059/5897/files/8791ce19a2-b088b50bd547d1dacf3e.png?v=1614010387)

Open the new folder, select every single file and folder either using the mouse or pressing Ctrl + A on the keyboard. Right-click and select copy.
BIOS & Firmware updates are installed with a USB Flash Drive. This must be formatted in FAT32.
Open the Gnome Disk Utility by searching for Disks in the Gnome launcher. Select your USB drive and click the - sign to remove the current partition.
This will delete all data on the drive. Once the original partition has been removed, the - sign will disappear and you will see a + sign. Click the + and select Type as FAT. You can use any name you want for the Volume Name.
![undefined](https://cdn.shopify.com/s/files/1/2059/5897/files/d242b96042-8fac1c244cd5f2c8a2be.png?v=1614010435)

Once complete, click the play sign that now shows to the left of the - sign. Click on the link that will appear below, it will be similar to /media/name/Firmware.
![undefined](https://cdn.shopify.com/s/files/1/2059/5897/files/99abfeb2ca-ae3e09899f625d501605.png?v=1614010490)

Once this is open, right-click anywhere in the right side of the window and select paste. You should have something similar to the below.
![](https://cdn.shopify.com/s/files/1/2059/5897/files/c88019f74a-8dbedac4e6d6fe95ab0f.png?v=1614010533)
Your USB Flash Drive is now ready. Leave it connected, connect your laptop charger and then turn off your laptop.

Turn your laptop back on and boot to the EFI Shell. For AMI firmware, tap the `F7` key (or `Fn` + `F7` if you have function lock enabled) repeatedly until you see a blue boot menu appear. Use the arrow keys to select the `EFI Shell` and press the enter key to boot from it. For coreboot firmware, press the key displayed on the screen and then select `Boot Manager`, and the `EFI Shell`.

From here, the process is automated and takes between 2-5 minutes to complete.

Do not interrupt this process once it has started. Stopping this update or powering off the device could cause your laptop to become inoperable and require physical repair.

Depending on the update, your laptop will automatically reboot or shut down once the update has been installed.

**Please note:** Certain BIOS updates require you to boot from the USB Flash Drive more than once. You will be prompted to do so if required. This is done with the same method of tapping the F7 key repeatedly to access the boot menu.
