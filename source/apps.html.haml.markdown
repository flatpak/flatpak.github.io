---
title: Flatpak Apps
description: Applications distributed as Flatpaks, ready to download.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Apps

  A growing number of apps are available as Flatpaks, including LibreOffice, Telegram, GIMP, Inkscape, MyPaint and numerous core GNOME applications. This page provides an overview of what's available, along with instructions on how to try them. If you are new to Flatpak, it recommended to complete the [introduction to installing and running Flatpaks](index.html#users) before trying them.

  Each application requires a runtime. See the [runtimes page](runtimes.html) for details on how to install these.

  ## LibreOffice

  LibreOffice is available as a standalone Flatpak file. This relies on the org.gnome.Platform 3.20 runtime, as well as the org.gnome.Platform.Locale runtime for it to appear in language other than US English. To download and install it, run:

  <pre>
  <span class="unselectable">$ </span>wget http://download.documentfoundation.org/libreoffice/flatpak/latest/LibreOffice.flatpak
  <span class="unselectable">$ </span>flatpak install --user --bundle LibreOffice.flatpak
  </pre>

  For more information, see the LibreOffice [Flatpak page](http://www.libreoffice.org/download/flatpak/).

  ## Telegram

  Experimental nightly builds of the [Telegram](https://telegram.org/) desktop client are being made available by [Jan Grulich](http://www.jgrulich.cz/). These require the 3.20 version of the org.gnome.Platform runtime. To install, run:

  <pre>
  <span class="unselectable">$ </span>wget https://jgrulich.fedorapeople.org/telegram/keys/telegram.asc
  <span class="unselectable">$ </span>flatpak remote-add --gpg-import=telegram.asc telegram-desktop https://jgrulich.fedorapeople.org/telegram/repo/
  <span class="unselectable">$ </span>flatpak install telegram-desktop org.telegram.TelegramDesktopDevel
  <span class="unselectable">$ </span>flatpak run org.telegram.TelegramDesktopDevel
  </pre>

  ## Pitivi

  Multiple versions of the [Pitivi video editor](http://www.pitivi.org/) are available as Flatkpaks, including stable, 0.96 and master. These require the 3.20 version of the org.gnome.Platform runtime. The Pitivi Flatpak repository can be added by downloading and installing a repository file:

  <pre>
  <span class="unselectable">$ </span>wget http://flatpak.pitivi.org/pitivi.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --from=pitivi.flatpakrepo pitivi
  </pre>

  It is then simply a case of picking the version you want and installing. For example, to install master:

  <pre>
  <span class="unselectable">$ </span>flatpak install pitivi org.pitivi.Pitivi master
  </pre>
  
  ## Nightly graphics apps

  The nightly-graphics repository contains daily development builds of common graphics applications, including:

  * [GIMP](http://gimp.org) (including a GTK+3 version)
  * [Inkscape](http://inkscape.org)
  * [MyPaint](http://mypaint.org)
  * [Scribus](https://www.scribus.net/)

  These applications require the org.gnome.Platform 3.20 runtime.
  
  To add the nightly-graphics repository, run:

  <pre>
  <span class="unselectable">$ </span>wget http://209.132.179.2/keys/nightly.gpg
  <span class="unselectable">$ </span>flatpak remote-add --gpg-import=nightly.gpg nightly-graphics http://209.132.179.2/repo/
  </pre>

  List the apps in the repository:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls nightly-graphics --app
  </pre>

  The graphics apps use "master" as their version name, so to install one, run:

  <pre>
  <span class="unselectable">$ </span>flatpak install nightly-graphics org.gimp.GimpDevel master
  </pre>

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
