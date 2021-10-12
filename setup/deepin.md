---
layout: default
---
## Install Flatpak

To install Flatpak, run the following:

```
sudo apt install flatpak
```

For Debian Jessie and Stretch, a flatpak package is available in the [official backports repository](https://backports.debian.org/Instructions/). 


## Add the Flathub repository
Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Install the Deepin themes

To install light and dark themes, run:
```
flatpak install flathub org.gtk.Gtk3theme.deepin
flatpak install flathub org.gtk.Gtk3theme.deepin-dark
```

## Restart
To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org)!

Note: graphical installation of Flatpak apps may not be possible with Alpine.

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->