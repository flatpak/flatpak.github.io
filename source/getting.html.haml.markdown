<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Getting Flatpak

  Flatpak is available for the most common Linux distributions.

  ### Fedora

  A `flatpak` package is available for Fedora from version 22.

  ### Ubuntu

  A `flatpak` package is available for Ubuntu 16.04 using a PPA. To install, run:

  <pre>
  <span class="unselectable">$ </span>sudo add-apt-repository ppa:alexlarsson/flatpak
  <span class="unselectable">$ </span>sudo apt-get update
  <span class="unselectable">$ </span>sudo apt-get install flatpak
  </pre>

  ### Debian

  A custom apt repository is available for Debian Jessie. To install, run the following as root:

  <pre>
  <span class="unselectable">$ </span>wget -O - https://sdk.gnome.org/apt/debian/conf/alexl.gpg.key|apt-key add -
  <span class="unselectable">$ </span>echo "deb [arch=amd64] https://sdk.gnome.org/apt/debian/ jessie main" > /etc/apt/sources.list.d/flatpak.list
  <span class="unselectable">$ </span>apt update
  <span class="unselectable">$ </span>apt install flatpak
  </pre>

  ### Arch

  A `flatpak` package is available in the official repositories.
  
  Also `flatpak-git` is available in the AUR for the latest development snapshot.

  ### Mageia

  A `flatpak` package is available in Cauldron.

</div></div></div></section>
