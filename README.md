# Lunar Client debs for Linux

Lunar Client is a free modpack for Minecraft.  
This repository is an easy and painless way of installing their official linux AppImage.  
It will automatically set up the desktop menus and icons so that you can play instantly!

### Install

1. [Download](https://github.com/dada513/LunarClient-Linux/raw/master/lunarclient.deb) the deb package
2. Left click on it to install, or use apt: `sudo apt install ./lunarclient.deb`

note: the package will set up a repository for updates after install and remove it after uninstall

### Versioning

Lunar Client will auto-update no matter what, the versioning of this deb package is for the icons/menus

### Building

```bash
git clone https://github.com/dada513/LunarClient-Linux.git
cd LunarClient-Linux
sudo ./build.sh
```
