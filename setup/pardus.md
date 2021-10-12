---
layout: default
---
## Install Flatpak
A flatpak package is available in Pardus 2019 and newer. To install it, run the following as root:

```
apt install flatpak
```

For Pardus 2017 and older versions, a flatpak package is available in the [official backports repository](https://backports.debian.org/Instructions/). 

## Install the Software Flatpak plugin

If you are running GNOME, it is also a good idea to install the Flatpak plugin for GNOME Software. To do this, run:

```
apt install gnome-software-plugin-flatpak
```


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