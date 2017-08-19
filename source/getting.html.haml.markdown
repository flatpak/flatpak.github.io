---
title: Getting Flatpak
description: How to download and install Flatpak on your system to get started.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Getting Flatpak

  Flatpak is available for the most common Linux distributions. After installing it, it is necessary to log out and in again for Flatpak apps to appear in your desktop.

  Once you've installed Flatpak, you can [get some apps](apps.html) or [create your own in 5 minutes](hello-world.html).

  ### Alpine

  A `flatpak` package is available in the testing repository.

  <pre>
  <span class="unselectable">$ </span>sudo apk add flatpak
  </pre>

  ### Arch

  A `flatpak` package is available in the official repositories. `flatpak-git` is also available in the AUR for the latest development snapshot.

  <pre>
  <span class="unselectable">$ </span>sudo pacman -S flatpak
  </pre>
  
  For development of Flatpak applications using `flatpak-builder` these dependencies are required:
  
  <pre>
  <span class="unselectable">$ </span>sudo pacman -S --asdeps --needed elfutils patch
  </pre>

  ### Debian

  A `flatpak` package is available in [Debian Stretch](https://wiki.debian.org/DebianStretch) and newer. To install, run the following as root:

  <pre>
  <span class="unselectable"># </span>apt install flatpak
  </pre>

  For Debian Jessie, a `flatpak` package is available in the official [backports repository](https://backports.debian.org/Instructions/).

  ### Fedora

  A `flatpak` package is available for Fedora 23 and newer. To install, run the following:

  <pre>
  <span class="unselectable">$ </span>sudo dnf install flatpak
  </pre>

  ### Gentoo

  An unofficial overlay is available [here](https://github.com/fosero/flatpak-overlay).

  ### Mageia

  A `flatpak` package is available for Mageia 6 and newer. To install, run the following as root:

  If using `DNF`

  <pre>
  <span class="unselectable"># </span>dnf install flatpak
  </pre>

  If using `urpmi`

  <pre>
  <span class="unselectable"># </span>urpmi flatpak
  </pre>

  ### openSUSE

  Flatpak is available as a [1-click install](https://software.opensuse.org/package/flatpak) for Leap 42.1 and 42.2 and Tumbleweed. It can also be installed on Tumbleweed using Zypper:

  <pre>
  <span class="unselectable">$ </span>sudo zypper install flatpak
  </pre>

  ### Ubuntu

  For Ubuntu 16.04, 16.10 and 17.04 a PPA is available. To install, run:

  <pre>
  <span class="unselectable">$ </span>sudo add-apt-repository ppa:alexlarsson/flatpak
  <span class="unselectable">$ </span>sudo apt update
  <span class="unselectable">$ </span>sudo apt install flatpak
  </pre>

  A `flatpak` package is available in [Ubuntu 16.10](https://wiki.ubuntu.com/YakketyYak) and newer via universe, however this is
  an older version, and it's recommended that you use the one from the PPA.

  ### Solus

  Flatpak package is available for Solus too. Install it using `eopkg`.

  <pre>
  <span class="unselectable">$ </span>sudo eopkg install flatpak
  </pre>


</div></div></div></section>
