---
title: Flatpak Applications
description: Applications distributed as Flatpaks, ready to download.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Flatpak Applications

  This page lists some of the apps that are available as Flatpaks, along with instructions for how to try them.

  The instructions on this page require Flatpak 0.6.13 or newer. To find out how to install it, see [Getting Flatpak](getting.html). For instructions on how to update and manage applications once they have been installed, see the [command line tutorial](command-line.html).

  All the examples install the apps system-wide and therefore require admin privileges. To install to your home directory and avoid the need for a password, just add `--user` to the install command. 

  ## <a name="libreoffice"></a>LibreOffice

  LibreOffice is available as a standalone Flatpak file.

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>wget http://download.documentfoundation.org/libreoffice/flatpak/latest/LibreOffice.flatpak
  <span class="unselectable">$ </span>flatpak install --bundle LibreOffice.flatpak
  </pre>

  For more information, see the LibreOffice [Flatpak page](http://www.libreoffice.org/download/flatpak/).

  ## <a name="telegram"></a>Telegram

  Experimental nightly builds of the [Telegram](https://telegram.org/) desktop client are being produced by [Jan Grulich](http://www.jgrulich.cz/).

  <pre>
  <span class="unselectable">$ </span>flatpak install --from https://jgrulich.fedorapeople.org/telegram/telegram.flatpakref
  <span class="unselectable">$ </span>flatpak run org.telegram.TelegramDesktopDevel
  </pre>

  ## <a name="spotify"></a>Spotify

  Builds of the latest [Spotify](https://spotify.com/) desktop client are being produced by Alex Larsson.

  <pre>
  <span class="unselectable">$ </span>flatpak install --from https://s3.amazonaws.com/alexlarsson/spotify-repo/spotify.flatpakref
  <span class="unselectable">$ </span>flatpak run com.spotify.Client
  </pre>

  ## <a name="skype"></a>Skype

  Builds of the alpha version of the [Skype](https://skype.com/) desktop client are being made available by Alex Larsson.

  <pre>
  <span class="unselectable">$ </span>flatpak install --from https://s3.amazonaws.com/alexlarsson/skype-repo/skype.flatpakref
  <span class="unselectable">$ </span>flatpak run com.skype.Client
  </pre>

  ## <a name="monodevelop"></a>MonoDevelop

  MonoDevelop is available as a Flatpak preview from Xamarin.

  <pre>
  <span class="unselectable">$ </span>flatpak install --from https://download.mono-project.com/repo/monodevelop.flatpakref
  <span class="unselectable">$ </span>flatpak run com.xamarin.MonoDevelop
  </pre>

  See the [MonoDevelop Linux download page](http://www.monodevelop.com/download/linux/) for more information.

  ## <a name="hexchat"></a>HexChat

  Builds of the popular IRC client.

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists tingping https://dl.tingping.se/flatpak/tingping.flatpakrepo
  <span class="unselectable">$ </span>flatpak install tingping io.github.Hexchat
  </pre>

  ## <a name="gnome-twitch"></a>GNOME Twitch

  GNOME client for the Twitch video platform.

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists tingping https://dl.tingping.se/flatpak/tingping.flatpakrepo
  <span class="unselectable">$ </span>flatpak install tingping com.vinszent.GnomeTwitch
  </pre>

  ## <a name="pithos"></a>Pithos

  Flatpak builds of the Pandora radio client.

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists tingping https://dl.tingping.se/flatpak/tingping.flatpakrepo
  <span class="unselectable">$ </span>flatpak install tingping io.github.Pithos
  </pre>

  ## <a name="transmission-remote-gtk"></a>Transmission Remote GTK

  GTK+ remote client for Transmission.

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists tingping https://dl.tingping.se/flatpak/tingping.flatpakrepo
  <span class="unselectable">$ </span>flatpak install tingping io.github.TransmissionRemoteGtk
  </pre>

  ## <a name="gnome-mpv"></a>GNOME MPV

  GTK+ front-end for the MPV video player.

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists tingping https://dl.tingping.se/flatpak/tingping.flatpakrepo
  <span class="unselectable">$ </span>flatpak install tingping io.github.GnomeMpv
  </pre>

  ## <a name="pitivi"></a>Pitivi

  Multiple versions of the [Pitivi video editor](http://www.pitivi.org/) are available as Flatkpaks, including stable, 0.96 and master. The Pitivi Flatpak repository can be added by downloading and installing a repository file:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --from pitivi http://flatpak.pitivi.org/pitivi.flatpakrepo
  </pre>

  It is then simply a case of picking the version you want and installing. For example, to install master:

  <pre>
  <span class="unselectable">$ </span>flatpak install pitivi org.pitivi.Pitivi//master
  </pre>

  ## <a name="corebird"></a>Corebird

  GNOME client for Twitter.
 
  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists baedert https://raw.githubusercontent.com/baedert/corebird-flatpak/master/baedert.flatpakrepo
  <span class="unselectable">$ </span>flatpak install baedert org.baedert.corebird stable
  </pre>

  ## <a name="stable-gnome"></a>Stable GNOME applications

  A collection of GNOME applications are available from the latest upstream release (version 3.22). This includes:

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
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome https://sdk.gnome.org/gnome.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --from gnome-apps https://sdk.gnome.org/gnome-apps.flatpakrepo
  </pre>

  You can then list available apps using:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls gnome-apps --app
  </pre>

  To install an application, like gedit, run:

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
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists gnome-nightly https://sdk.gnome.org/gnome-nightly.flatpakrepo
  <span class="unselectable">$ </span>flatpak remote-add --from gnome-nightly-apps https://sdk.gnome.org/gnome-apps-nightly.flatpakrepo
  </pre>

  List the apps in the repository:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls gnome-nightly-apps --app
  </pre>

  Install an app:

  <pre>
  <span class="unselectable">$ </span>flatpak install gnome-nightly-apps org.gnome.gedit
  </pre>

</div></div></div></section>
