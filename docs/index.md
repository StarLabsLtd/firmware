This guide will show you how to install updates from the [LVFS](https://fwupd.org/) (Linux Vendor Firmware Service), a secure web service that will allow you to securely download and install updates.

**NOTE:** If you are using 'Full Disk' Encryption, please only update via a **LIVE USB**.

#### Installation

Open a terminal window and enter the below commands:

**On Ubuntu, Linux Mint, elementary OS, Zorin OS and other Ubuntu derivatives:**

``` bash
sudo add-apt-repository ppa:starlabs/main
sudo add-apt-repository universe
sudo apt update
sudo apt install fwupd libflashrom1
```

**On Manjaro:**

``` bash
sudo pacman -Syu fwupd-starlabs flashrom-starlabs gnome-firmware
```

**On Debian 10:**

``` bash
echo "deb http://ppa.launchpad.net/starlabs/main/ubuntu focal main" | sudo tee -a /etc/apt/sources.list.d/starlabs-ubuntu-main-focal.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 17A20BAF70BEC3904545ACFF8F21C26C794386E3
sudo apt update
sudo apt install fwupd fwupd-gui
```

**For Debian 11 and Fedora 35:**

Please use our pre-built packages, which can be found [here](https://github.com/StarLabsLtd/packages)

#### Graphical Method

Open Firmware Update. All supported devices will be listed in the left menu. If an update is available, you can install it using the button at the bottom right.
![undefined](https://cdn.shopify.com/s/files/1/2059/5897/files/2de356d4e0-e0baa6ccea1a30358202.png?v=1614011635)
You can check for updates by clicking on the hamburger menu, then selecting "Check for Updates".
![undefined](https://cdn.shopify.com/s/files/1/2059/5897/files/40a2506d41-79f2952cc772803f85ec.png?v=1614011664)

###### Enter password

Click on the install button. If prompted, enter your password.

###### Reboot

The update will install upon the next reboot cycle.
Make sure power stays connected during the update.
This may take 2-3 minutes to complete.
Do not power off the machine during the update.

Certain updates require confirmation when they are installed. This will appear as a grey screen with blue text. If you see this screen, please select **Proceed with Flash Update.**

#### Terminal Method

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

The update will install upon the next reboot cycle.
Make sure power stays connected during the update.
This may take 2-3 minutes to complete.
Do not power off the machine during the update.

Certain updates require confirmation when they are installed. This will appear as a grey screen with blue text. If you see this screen, please select **Proceed with Flash Update.**

If you would like to test the latest updates before their official release, type the below command into your terminal window:

``` bash
fwupdmgr enable-remote lvfs-testing
```

**Troubleshooting**
If you see a message `Message recipient disconnected from message bus without replying`, you'll need to add the `iomem=relaxed` kernel parameter. The two below commands will do this for you:

```
sudo sed -i 's/quiet/quiet iomem=relaxed/g' /etc/default/grub
sudo update-grub
```

If you see a message that says the version numbers don't match, please use:

```
fwupdmgr update --force
```
