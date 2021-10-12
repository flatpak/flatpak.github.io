---
layout: default
---
## Install Flatpak

To install Flatpak, enable the ~amd64 keyword for sys-apps/flatpak, acct-user/flatpak and acct-group/flatpak:

```
echo 'sys-apps/flatpak ~amd64\nacct-user/flatpak ~amd64\nacct-group/flatpak ~amd64\ndev-util/ostree ~amd64' >> /etc/portage/accept_keywords/flatpak
```

Then, install Flatpak:

```
emerge sys-apps/flatpak
```

## Add the Flathub repository
Flathub is the best place to get Flatpak apps. To enable it, run:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## Restart
To complete setup, restart your system. Now all you have to do is [install some apps](https://flathub.org)!

Note: graphical installation of Flatpak apps may not be possible with Gentoo.

<!--
Written with love using [Apostrophe](https://flathub.org/apps/details/org.gnome.gitlab.somas.Apostrophe).
-->