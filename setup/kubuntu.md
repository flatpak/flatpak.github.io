---
layout: default
---

## Install Flatpak

To install Flatpak on Kubuntu 18.10 (Cosmic Cuttlefish), simply run:

```
sudo apt install flatpak
```

With older Kubuntu versions, the official Flatpak PPA is the recommended way to install Flatpak. To install it, run the following in a terminal:

```
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install flatpak
```


## Install the Discover Flatpak backend

The Flatpak plugin for the Software app makes it possible to install apps without needing the command line (available on Kubuntu 18.04 and newer). To install on 18.04, run:

```
sudo apt install plasma-discover-flatpak-backend
```

On Kubuntu 20.04 or later, you should run this instead:

```
sudo apt install plasma-discover-backend-flatpak
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