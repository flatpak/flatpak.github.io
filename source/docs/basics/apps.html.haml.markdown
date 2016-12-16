---
title: Flatpak Apps
description: Applications distributed as Flatpaks, ready to download.
---
<section class=""><div class="doc-container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Apps

  A growing number of apps are available as Flatpaks, including LibreOffice, Telegram, GIMP, Inkscape, MyPaint and numerous core GNOME applications. This page provides an overview of what's available, along with instructions on how to try them. If you are new to Flatpak, it recommended to complete the [introduction to installing and running Flatpaks](index.html#users) before trying them.

  Each application requires a runtime. See the [runtimes page](runtimes.html) for details on how to install these.

  ## <a name="libreoffice"></a>LibreOffice

  LibreOffice is available as a standalone Flatpak file. This relies on the org.gnome.Platform 3.20 runtime, as well as the org.gnome.Platform.Locale runtime for it to appear in language other than US English. To download and install it, run:

  <pre>
  <span class="unselectable">$ </span>wget http://download.documentfoundation.org/libreoffice/flatpak/latest/LibreOffice.flatpak
  <span class="unselectable">$ </span>flatpak install --user --bundle LibreOffice.flatpak
  </pre>

  For more information, see the LibreOffice [Flatpak page](http://www.libreoffice.org/download/flatpak/).

  ## <a name="telegram"></a>Telegram

  Experimental nightly builds of the [Telegram](https://telegram.org/) desktop client are being made available by [Jan Grulich](http://www.jgrulich.cz/). These require the 3.20 version of the org.gnome.Platform runtime. To install, run:

  <pre>
  <span class="unselectable">$ </span>flatpak install --from https://jgrulich.fedorapeople.org/telegram/telegram.flatpakref
  <span class="unselectable">$ </span>flatpak run org.telegram.TelegramDesktopDevel
  </pre>

  ## <a name="pitivi"></a>Pitivi

  Multiple versions of the [Pitivi video editor](http://www.pitivi.org/) are available as Flatkpaks, including stable, 0.96 and master. These require the 3.20 version of the org.gnome.Platform runtime. The Pitivi Flatpak repository can be added by downloading and installing a repository file:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --from pitivi http://flatpak.pitivi.org/pitivi.flatpakrepo
  </pre>

  It is then simply a case of picking the version you want and installing. For example, to install master:

  <pre>
  <span class="unselectable">$ </span>flatpak install pitivi org.pitivi.Pitivi//master
  </pre>

  ## <a name="nightly-graphics"></a>Nightly graphics apps

  The nightly-graphics repository contains daily development builds of common graphics applications, including:

  * [GIMP](http://gimp.org)
  * [Inkscape](http://inkscape.org)
  * [MyPaint](http://mypaint.org)
  * [Scribus](https://www.scribus.net/)

  Applications in this repository require the org.gnome.Platform runtime. See the [runtimes page](runtimes.html) for details on how to add the gnome remote so they will be found.

  To add the nightly-graphics repository, run:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --from nightly-graphics http://209.132.179.2/nightly-graphics.flatpakrepo
  </pre>

  List the apps in the repository:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls nightly-graphics --app
  </pre>

  To install gimp for example, run:

  <pre>
  <span class="unselectable">$ </span>flatpak install nightly-graphics org.gimp.GimpDevel
  </pre>

  ## <a name="stable-gnome"></a>Stable GNOME applications

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
  <span class="unselectable">$ </span>flatpak remote-add --from gnome-apps https://sdk.gnome.org/gnome-apps.flatpakrepo
  </pre>

  You can then list available apps using:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls gnome-apps --app
  </pre>

  Applications in this repository require the org.gnome.Platform runtime. See the [runtimes page](runtimes.html) for details on how to add the gnome remote so they will be found.
  You can then install for instance gedit like this:

  <pre>
  <span class="unselectable">$ </span>flatpak install gnome-apps org.gnome.gedit
  </pre>

  ## <a name="nightly-gnome"></a>Nightly GNOME applications

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
  <span class="unselectable">$ </span>flatpak remote-add --from gnome-nightly-apps https://sdk.gnome.org/gnome-apps-nightly.flatpakrepo
  </pre>

  And to list the apps in the repository:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls gnome-nightly-apps --app
  </pre>

  Applications in this repository require the nightly version of the org.gnome.Platform runtime. See the [runtimes page](runtimes.html) for details on how to add the gnome-nightly remote so they will be found.

  And to install an app:

  <pre>
  <span class="unselectable">$ </span>flatpak install gnome-nightly-apps org.gnome.gedit
  </pre>

  And to update it:

  <pre>
  <span class="unselectable">$ </span>flatpak update org.gnome.gedit
  </pre>



</div></div></div></section>
