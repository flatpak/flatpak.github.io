---
title: Getting Flatpak
description: How to download and install Flatpak on your system to get started.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Getting Flatpak

  Flatpak is available for the most common Linux distributions. After installing it, it is necessary to log out and in again for Flatpak apps to appear in your desktop.

  ### Arch

  A `flatpak` package is available in the official repositories. `flatpak-git` is also available in the AUR for the latest development snapshot.

  ### Debian

  An official `flatpak` package is available in Debian testing and unstable. To install, run the following as root:

  <pre>
  <span class="unselectable">$ </span>apt update
  <span class="unselectable">$ </span>apt install flatpak
  </pre>

  For Debian Jessie, there is a custom apt repository available. To install, run the following as root:

  <pre>
  <span class="unselectable">$ </span>wget -O - https://sdk.gnome.org/apt/debian/conf/alexl.gpg.key|apt-key add -
  <span class="unselectable">$ </span>echo "deb [arch=amd64] https://sdk.gnome.org/apt/debian/ jessie main" > /etc/apt/sources.list.d/flatpak.list
  <span class="unselectable">$ </span>apt install apt-transport-https
  <span class="unselectable">$ </span>apt update
  <span class="unselectable">$ </span>apt install flatpak
  </pre>

  ### Fedora

  A `flatpak` package is available for Fedora 23 and newer. To install, run the following:

  <pre>
  <span class="unselectable">$ </span>sudo dnf install flatpak
  </pre>

  ### Gentoo

  An unofficial overlay is available [here](https://github.com/fosero/flatpak-overlay)

  ### Mageia

  A `flatpak` package is available in Cauldron. To install, run the following as root:

  If using `DNF`

  <pre>
  <span class="unselectable">$ </span>dnf install flatpak
  </pre>

  If using `urpmi`

  <pre>
  <span class="unselectable">$ </span>urpmi flatpak
  </pre>

  ### Ubuntu

  A `flatpak` package is available for Ubuntu 16.04 using a PPA. To install, run:

  <pre>
  <span class="unselectable">$ </span>sudo add-apt-repository ppa:alexlarsson/flatpak
  <span class="unselectable">$ </span>sudo apt update
  <span class="unselectable">$ </span>sudo apt install flatpak
  </pre>

</div></div></div></section>
