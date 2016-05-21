<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Getting Flatpak

  Flatpak is available for the most common Linux distributions.

  ### Fedora

  A `flatpak` package is available for Fedora from version 22.

  ### Ubuntu

  A `flatpak` package is available for Ubuntu 14.04, 15.04, 15.10 and 16.04 using a PPA. To install, run:

      sudo add-apt-repository ppa:alexlarsson/flatpak
      sudo apt-get update
      sudo apt-get install flatpak

  ### Debian

  A custom apt repository is available for Debian Jessie. To install, run the following as root:

      wget -O - https://sdk.gnome.org/apt/debian/conf/alexl.gpg.key|apt-key add -
      echo "deb [arch=amd64] https://sdk.gnome.org/apt/debian/ jessie main" > /etc/apt/sources.list.d/flatpak.list
      apt update
      apt install flatpak

  This will install Flatpak, but by default Debian disallows user-namespaces as non-root, which means Flatpak will not work. To enable this run:

      sysctl kernel.unprivileged_userns_clone=1

  To make this change permanent (after reboot), run:

      echo 'kernel.unprivileged_userns_clone = 1' > /etc/sysctl.d/10-unpriv-ns.conf

  ### Arch

  A `flatpak` package is available in the official repositories.

  ### Mageia

  A `flatpak` package is available in Cauldron.

</div></div></div></section>
