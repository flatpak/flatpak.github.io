---
layout: default
---
## Install Flatpak

To install Flatpak, run the following in a terminal:

```
sudo eopkg install flatpak xdg-desktop-portal-gtk
```

## Add the Flathub repository
Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```


## Restart
To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org)!

Note: graphical installation of Flatpak apps may not be possible with Solus.

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->