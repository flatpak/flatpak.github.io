---
layout: default
---
## Install Flatpak
To install Flatpak on Ubuntu 18.10 (Cosmic Cuttlefish) or later, simply run:

```
sudo apt install flatpak
```

With older Ubuntu versions, the official Flatpak PPA is the recommended way to install Flatpak. To install it, run the following in a terminal:

```
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
```


## Install the Software Flatpak plugin

The Flatpak plugin for the Software app makes it possible to install apps without needing the command line. To install, run:

```
sudo apt install gnome-software-plugin-flatpak
```

Note: the Software app is distributed as a Snap since Ubuntu 20.04 and does not support graphical installation of Flatpak apps. Installing the Flatpak plugin will also install a deb version of Software and result in two Software apps being installed at the same time.

## Add the Flathub repository
Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Restart

To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org)!

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->