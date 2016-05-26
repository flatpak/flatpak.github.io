<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown

  # Apps

  A variety of apps are currently available to install as Flatpaks. This includes stable and nightly GNOME applications, and a collection of nightly graphics application builds.

  ## Stable GNOME applications

  A collection of GNOME applications are available from the latest upstream release (version 3.20). These can be found in the gnome-apps repository, which can be added with:

      $ wget https://sdk.gnome.org/keys/gnome-sdk.gpg
      $ flatpak remote-add --gpg-import=gnome-sdk.gpg gnome-apps https://sdk.gnome.org/repo-apps/

  You can then list available apps using:

      $ flatpak remote-ls gnome-apps --app

  Applications in this repository require the 3.20 version of the org.gnome.Platform runtime: see the [runtimes page](runtimes.html) for details on how to install it.

  Stable GNOME applictaions also use the version name of "stable". To install one, you therefore run:

      $ flatpak install gnome-apps org.gnome.gedit stable

  ## Nightly GNOME applications

  The GNOME nightly apps repository includes a collection of GNOME applications that are built daily from Git master. It includes:

  * [Builder](https://wiki.gnome.org/Apps/Builder)
  * Calculator
  * [Calendar](https://wiki.gnome.org/Apps/Calendar)
  * Characters
  * [Dictionary](https://wiki.gnome.org/Apps/Dictionary)
  * [Documents](https://wiki.gnome.org/Apps/Documents)
  * [Web](https://wiki.gnome.org/Apps/Epiphany) (Epiphany)
  * [Evince](https://wiki.gnome.org/Apps/Evince)
  * Games
  * [Gitg](https://wiki.gnome.org/Apps/Gitg)
  * [Glade](https://wiki.gnome.org/Apps/Glade)
  * [Maps](https://wiki.gnome.org/Apps/Maps)
  * News
  * [Polari](https://wiki.gnome.org/Apps/Polari)
  * [Rhythmbox](https://wiki.gnome.org/Apps/Rhythmbox)
  * [Todo](https://wiki.gnome.org/Apps/Todo)
  * [Videos](https://wiki.gnome.org/Apps/Totem) (Totem)
  * [Weather](https://wiki.gnome.org/Apps/Weather)
  * Notes (Bijiben)
  * [Clocks](https://wiki.gnome.org/Apps/Clocks)
  * [Eye of Gnome](https://wiki.gnome.org/Apps/EyeOfGnome)
  * [Gedit](https://wiki.gnome.org/Apps/Gedit)
  * [Iagno](https://wiki.gnome.org/Apps/Iagno)

  To add the GNOME nightly apps repository, run:

      $ flatpak remote-add --gpg-import=nightly.gpg gnome-nightly-apps https://sdk.gnome.org/nightly/repo-apps/

  And to list the apps in the repository:

      $ flatpak remote-ls gnome-nightly-apps --app

  These applications require the nightly version of the org.gnome.Platform runtime: see the [runtimes page](runtimes.html) for details on how to install this. All the apps in the repository use the version name of "master". For example, to install gedit run:

      $ flatpak install gnome-nightly-apps org.gnome.gedit master

  And to update it:

      $ flatpak update org.gnome.gedit master

  ## Nightly graphics apps

  The nightly-graphics repository contains daily development builds of common graphics applications, including:

  * [Darktable](http://www.darktable.org/)
  * [GIMP](http://gimp.org)
  * GIMP GTK+3 branch
  * [Inkscape](http://inkscape.org)
  * [MyPaint](http://mypaint.org)

  These applications require the org.gnome.Platform 3.20 runtime: see the [runtimes page](runtimes.html) for details on how to install this. To add the nightly-graphics repository, run:

      $ wget http://209.132.179.2/keys/nightly.gpg
      $ flatpak remote-add --user --gpg-import=nightly.gpg nightly-graphics http://209.132.179.2/repo/

  List the apps in the repository:

      $ flatpak remote-ls gnome-nightly-apps --app

  The graphics apps use "master" as their version name, so to install one, run:

      $ flatpak update org.gimp.GimpDevel master

</div></div></div></section>
