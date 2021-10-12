---
layout: default
---

Flatpak applications can be installed on Chrome OS with the Crostini Linux compatibility layer. This is not available for all Chrome OS devices, so you should ensure your device is compatible before proceeding. A list of compatible devices is maintained [here](https://www.reddit.com/r/Crostini/wiki/getstarted/crostini-enabled-devices).

## Enable Linux support

Navigate to [chrome://os-settings](chrome://os-settings), and scroll down to Developers and turn on Linux development environment. Chrome OS will take some time downloading and installing Linux.

## Start a Linux terminal

Press the Search/Launcher key, type "Terminal", and launch the Terminal app.

## Install Flatpak

To install Flatpak, run the following in the terminal:

```
sudo apt install flatpak
```

A more up to date flatpak package is available in the [Debian backports repository](https://backports.debian.org/Instructions/). 

## Add the Flathub repository

Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```


## Restart

To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org)!

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->