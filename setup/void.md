---
layout: default
---
## Install Flatpak
To install Flatpak, run the following:

```
sudo xbps-install -S flatpak
```

## Add the Flathub repository

Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Restart

To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org/)!