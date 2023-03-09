## LVFS

This guide will show you how to install updates from the [LVFS](https://fwupd.org/) (Linux Vendor Firmware Service), a secure web service allowing you to download and install updates securely.

##### Please note: If you are using 'Full Disk' Encryption, please only update the EC (Embedded Controller) via a **Live USB**.

## Installation

Open a terminal window and enter the below commands:

###### Ubuntu, Linux Mint, elementary OS, Zorin OS and other Ubuntu derivatives

``` bash
sudo add-apt-repository ppa:starlabs/main
sudo add-apt-repository universe
sudo apt update
sudo apt install fwupd libflashrom1
```

###### Manjaro 21

``` bash
sudo pacman -Syu flashrom-starlabs
```

###### Debian 11, MX Linux

Please use our pre-built packages, which you can find [here](https://github.com/StarLabsLtd/packages)

###### Fedora 37

You need to install `fwupd`, `flashrom` and `fwupd-plugin-flashrom`. Please install `flashrom` from copr://starlabs/fwupd

## Updating

Once you've installed fwupd, there are a few ways to update the firmware; some are distribution specific.

### elementaryOS

On elementaryOS 6 and later, fwupd will integrate into **System Settings**, and appear under **System** > **Firmware**.

![elementarySystem](https://cdn.shopify.com/s/files/1/2059/5897/files/system-firmware.png)

You can view the current firmware information and install updates by clicking on each component.

![elementaryDetails](https://cdn.shopify.com/s/files/1/2059/5897/files/system-firmware-details.png)

### GNOME Software

###### Ubuntu, Zorin OS, Fedora, OpenSUSE, Arch, Manjaro GNOME, Debian

For any distribution using the GNOME desktop environment, fwupd will integrate into GNOME Software. Any firmware updates will appear alongside your regular software updates.

![GNOMESoftware](https://cdn.shopify.com/s/files/1/2059/5897/files/gnome-software2.png?v=1663942115)

### KDE Discover

###### Kubuntu, KDE Neon, Fedora KDE, Manjaro KDE

For any distribution using the KDE desktop environment, fwupd will integrate into KDE Discover. Any firmware updates will appear alongside your regular software updates.

![KDEDiscover](https://cdn.shopify.com/s/files/1/2059/5897/files/discover-software.png)

### Other Distributions

#### GNOME Firmware

There is a standalone GUI called GNOME Firmware for distributions that can't use the above integrations; it's available for many distributions, even ones that don't use GNOME. You need to install it via your package manager.

Once that's done, open Firmware Update; this will show you all the supported devices in the left menu. If an update is available, you can install it using the button at the bottom right.

![undefined](https://cdn.shopify.com/s/files/1/2059/5897/files/2de356d4e0-e0baa6ccea1a30358202.png?v=1614011635)

You can check for updates by clicking on the hamburger menu and selecting "Check for Updates".

![undefined](https://cdn.shopify.com/s/files/1/2059/5897/files/40a2506d41-79f2952cc772803f85ec.png?v=1614011664)

#### Terminal Method

You can manage your firmware and install updates from the terminal if none of the above options is available.

###### Check for Updates

From your terminal window, type in the below command:

``` bash
fwupdmgr refresh
```

###### Install Updates

From your terminal window, type in the below command:

``` bash
fwupdmgr update
```

###### Reboot

The update will install upon the next reboot cycle. Ensure the power stays connected during the update, which may take 2-3 minutes to complete. Do not power off the machine during the update.

Specific updates require confirmation when installed; this will appear as a grey screen with blue text. If you see this screen, please select **Proceed with Flash Update.**

If you would like to test the latest updates before their official release, type the below command into your terminal window:

``` bash
fwupdmgr enable-remote lvfs-testing
```
