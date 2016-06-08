---
title: Flatpak Apps
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Apps
  
  ## Nightly graphics apps

  The nightly-graphics repository contains daily development builds of common graphics applications, including:

  * [Darktable](http://www.darktable.org/)
  * [GIMP](http://gimp.org)
  * GIMP GTK+3 branch
  * [Inkscape](http://inkscape.org)
  * [MyPaint](http://mypaint.org)

  These applications require the org.gnome.Platform 3.20 runtime. See the [runtimes page](runtimes.html) for details on how to install this.
  
  To add the nightly-graphics repository, run:

  <pre>
  <span class="unselectable">$ </span>wget http://209.132.179.2/keys/nightly.gpg
  <span class="unselectable">$ </span>flatpak remote-add --user --gpg-import=nightly.gpg nightly-graphics http://209.132.179.2/repo/
  </pre>

  List the apps in the repository:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls nightly-graphics --app
  </pre>

  The graphics apps use "master" as their version name, so to install one, run:

  <pre>
  <span class="unselectable">$ </span>flatpak install nightly-graphics org.gimp.GimpDevel master
  </pre>

  ## LibreOffice

  LibreOffice is available as a Flatpak. See their [Flatpak page](http://www.libreoffice.org/download/flatpak/) for details.
  A growing number of apps are available as Flatpaks. This includes LibreOffice, a collection of nightly graphics application builds like GIMP, Inkscape and MyPaint, and numerous stable and nightly GNOME applications.

  ## Stable GNOME applications

  A collection of GNOME applications are available from the latest upstream release (version 3.20). This includes:

  * [Builder](https://wiki.gnome.org/Apps/Builder)
  * [Calculator](https://wiki.gnome.org/Apps/Calculator)
  * [Calendar](https://wiki.gnome.org/Apps/Calendar)
  * Characters
  * [Clocks](https://wiki.gnome.org/Apps/Clocks)
  * [Dictionary](https://wiki.gnome.org/Apps/Dictionary)
  * [Evince](https://wiki.gnome.org/Apps/Evince)
  * [Eye of Gnome](https://wiki.gnome.org/Apps/EyeOfGnome)
  * [Gedit](https://wiki.gnome.org/Apps/Gedit)
  * [Iagno](https://wiki.gnome.org/Apps/Iagno)
  * [Maps](https://wiki.gnome.org/Apps/Maps)
  * [Notes](https://wiki.gnome.org/Apps/Bijiben) (Bijiben)
  * [Polari](https://wiki.gnome.org/Apps/Polari)
  * [Rhythmbox](https://wiki.gnome.org/Apps/Rhythmbox)
  * [Todo](https://wiki.gnome.org/Apps/Todo)
  * [Weather](https://wiki.gnome.org/Apps/Weather)
  * [Web](https://wiki.gnome.org/Apps/Epiphany) (Epiphany)

  These can be found in the gnome-apps repository, which can be added with:

  <pre>
  <span class="unselectable">$ </span>wget https://sdk.gnome.org/keys/gnome-sdk.gpg
  <span class="unselectable">$ </span>flatpak remote-add --gpg-import=gnome-sdk.gpg gnome-apps https://sdk.gnome.org/repo-apps/
  </pre>

  You can then list available apps using:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls gnome-apps --app
  </pre>

  Applications in this repository require the 3.20 version of the org.gnome.Platform runtime. See the [runtimes page](runtimes.html) for details on how to install it.

  Stable GNOME applications also use the version name of "stable". To install one, you therefore run:

  <pre>
  <span class="unselectable">$ </span>flatpak install gnome-apps org.gnome.gedit stable
  </pre>

  ## Nightly GNOME applications

  The GNOME nightly apps repository includes a collection of GNOME applications that are built daily from Git master. It includes:

  * [Builder](https://wiki.gnome.org/Apps/Builder)
  * [Calculator](https://wiki.gnome.org/Apps/Calculator)
  * [Calendar](https://wiki.gnome.org/Apps/Calendar)
  * Characters
  * [Clocks](https://wiki.gnome.org/Apps/Clocks)
  * [Dictionary](https://wiki.gnome.org/Apps/Dictionary)
  * [Documents](https://wiki.gnome.org/Apps/Documents)
  * [Evince](https://wiki.gnome.org/Apps/Evince)
  * [Eye of Gnome](https://wiki.gnome.org/Apps/EyeOfGnome)
  * [Games](https://wiki.gnome.org/Apps/Games)
  * [Gedit](https://wiki.gnome.org/Apps/Gedit)
  * [Gitg](https://wiki.gnome.org/Apps/Gitg)
  * [Glade](https://wiki.gnome.org/Apps/Glade)
  * [Iagno](https://wiki.gnome.org/Apps/Iagno)
  * [Maps](https://wiki.gnome.org/Apps/Maps)
  * News
  * [Notes](https://wiki.gnome.org/Apps/Bijiben) (Bijiben)
  * [Polari](https://wiki.gnome.org/Apps/Polari)
  * [Rhythmbox](https://wiki.gnome.org/Apps/Rhythmbox)
  * [Todo](https://wiki.gnome.org/Apps/Todo)
  * [Videos](https://wiki.gnome.org/Apps/Totem) (Totem)
  * [Web](https://wiki.gnome.org/Apps/Epiphany) (Epiphany)
  * [Weather](https://wiki.gnome.org/Apps/Weather)

  To add the GNOME nightly apps repository, run:

  <pre>
  <span class="unselectable">$ </span>wget https://sdk.gnome.org/nightly/keys/nightly.gpg
  <span class="unselectable">$ </span>flatpak remote-add --gpg-import=nightly.gpg gnome-nightly-apps https://sdk.gnome.org/nightly/repo-apps/
  </pre>

  And to list the apps in the repository:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls gnome-nightly-apps --app
  </pre>

  These applications require the nightly version of the org.gnome.Platform runtime. See the [runtimes page](runtimes.html) for details on how to install this.
  
  All the apps in the repository use the version name of "master". For example, to install gedit run:

  <pre>
  <span class="unselectable">$ </span>flatpak install gnome-nightly-apps org.gnome.gedit master
  </pre>

  And to update it:

  <pre>
  <span class="unselectable">$ </span>flatpak update org.gnome.gedit master
  </pre>



</div></div></div></section>
