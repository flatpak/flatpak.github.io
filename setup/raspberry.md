---
layout: default
---
## Install Flatpak

A flatpak package is available in Raspberry Pi OS (previously called Raspbian) Stretch and newer. To install it, run the following as root:

```
apt install flatpak
```

## Add the Flathub repository
Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

**Important note:** As of March 2021, Raspberry Pi computers still ship with the 32-bit version of Raspberry Pi OS. However Flathub started phasing out support for that architecture. If you consider Flathub as an important source of applications, it is recommended to use Raspberry Pi OS 64-bit as newer applications are more likely to be available for that platform.

## Restart
To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org)!

Note: graphical installation of Flatpak apps may not be possible with Raspberry Pi OS.

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->