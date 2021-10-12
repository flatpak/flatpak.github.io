---
layout: default
---
## Pop!_OS is Flatpak-ready

Pop!_OS 20.04 has Flatpak installed and Flathub configured by default. The Pop!_Shop can be used to install flatpaks.

For older versions of Pop!_OS, see the instructions below.

### Install Flatpak
To install Flatpak on Pop!_OS 19.10 and earlier, simply run:

```
sudo apt install flatpak
```

### Add the Flathub repository
Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Restart

To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org)!

Note: graphical installation of Flatpak apps may not be possible with Pop!_OS 19.10 and earlier.

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->