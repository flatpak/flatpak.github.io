---
layout: default
---
## Install Flatpak
To install Flatpak, set NixOS option `services.flatpak.enable` to true by putting the following into your `/etc/nixos/configuration.nix`: 

```
services.flatpak.enable = true;
```

Then, rebuild and switch to the new configuration with:

```
sudo nixos-rebuild switch
```

For more details see the [NixOS documentation](https://nixos.org/manual/nixos/stable/index.html#module-services-flatpak).

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