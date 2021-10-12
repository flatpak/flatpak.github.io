---
layout: default
---
## Install Flatpak
Flatpak is available in the default repositories of all currently maintained openSUSE Leap and openSUSE Tumbleweed versions.

If you prefer a graphical installation, you can install Flatpak using a "1-click installer" from [software.opensuse.org](https://software.opensuse.org/package/flatpak). If your distribution version is not shown by default, click *Show flatpak for other distributions* first and then select from the list.

Alternatively, install Flatpak from the command line using Zypper:

```
sudo zypper install flatpak
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