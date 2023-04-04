---
layout: about
title:  Setting Up
---

The main program for installing updates is called `fwupd`, and there are a few other components that are needed depending on the type of update.

## coreboot requirements
* flashrom must be installed. The version of flashrom depends on the processor, but as a general rule, the version of flashrom needs
to have been released after the processor was. The version readily available on most distributions at the time of writtin this, is
`v1.2` which is almost 3 years old. The are steps below which cover installing a more recent version for popular distributions.

## ITE requirements (only for standalone EC updates)
* The disk cannot be encrypted with LUKS
* Plymouth must be installed and active

## AMI requirements
* None

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
