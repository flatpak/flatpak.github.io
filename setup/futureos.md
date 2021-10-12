---
layout: default
---

Flatpak is installed by default on Future OS Workstation. To get started, all you need to do is enable Flathub, which is the best way to get Flatpak apps. Just download and install the [Flathub repository file](https://flathub.org/repo/flathub.flatpakrepo). 

Now all you have to do is [install some apps](https://flathub.org)!

The above links should work on the default GNOME and KDE Fedora installations, but if they fail for some reason you can manually add the Flathub remote by running: 

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->