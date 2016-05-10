<section class=""><div class="container"><div class="row"><div class="col-lg-12">
:markdown
  In order to run xdg-app applications you need to have a runtime for it. This page lists the runtimes maintained by the Gnome project.

  Stable runtimes
  ===============

  Every major Gnome release comes with stable runtimes that contains the main gnome platform libraries. The runtimes are based on the official freedesktop.org runtimes (of a fixed version that was current when the gnome version was released). They will get minor bugfix and security updates, but should be considered ABI stable and frozen.

  The repository also contains a build of the freedesktop.org runtimes that the gnome builds are based on. There is currently no other public build of these, so the gnome repository can be considered the official build.

  Repo
  ----

  The repository is available at: [http://sdk.gnome.org/repo/](http://sdk.gnome.org/repo/) All releases are manually signed with this key: [https://sdk.gnome.org/keys/gnome-sdk.gpg](https://sdk.gnome.org/keys/gnome-sdk.gpg)

  You can add this repository to your local homedirectory with this command:

      xdg-app remote-add --user --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/

  This repository contains these runtimes:

  <table class="full"><!-- fixme make into markdown tables -->
    <tr>
      <th>Name</th><th>Description</th><th class="nowrap">Versions</th>
    </tr>
    <tr>
      <td>org.gnome.Platform</td>
      <td>The standard Gnome runtime used by most gnome apps</td>
      <td>3.16, 3.18, 3.20</td>
    </tr>
    <tr>
      <td>org.gnome.Platform.Locale</td>
      <td>Addins to org.gnome.Platform that adds locale data and translations</td>
      <td>3.20</td>
    </tr>
    <tr>
      <td>org.gnome.Sdk</td>
      <td></td>
      <td>3.20</td>
    </tr>
    <tr>
      <td>org.</td>
      <td>The development runtime used to build apps, and required by apps like gnome-builder</td>
      <td>3.16, 3.18, 3.20</td>
    </tr>
    <tr>
      <td>org.gnome.Sdk.Debug</td>
      <td>Debug info addin for org.gnome.Sdk</td>
      <td>3.20</td>
    </tr>
    <tr>
      <td>org.freedesktop.Platform</td>
      <td>Smaller runtime with basic platform including X11, wayland, mesa, dbus, SDL, etc. Used as a base for org.gnome.Platform and other runtimes.</td>
      <td>1.0, 1.2, 1.4</td>
    </tr>
    <tr>
      <td>org.freedesktop.Platform.Locale</td>
      <td>Addins to org.gnome.Platform that adds locale data and translations</td>
      <td>1.4</td>
    </tr>
    <tr>
      <td>org.freedesktop.Sdk</td>
      <td>The development runtime used by org.freedesktop.Platform</td>
      <td>1.0, 1.2, 1.4</td>
    </tr>
    <tr>
      <td>org.freedesktop.Sdk.Locale</td>
      <td>Locale addins for org.freedesktop.Sdk</td>
      <td>1.0, 1.2, 1.4</td>
    </tr>
    <tr>
      <td>org.freedesktop.Sdk.Debug</td>
      <td>Debug info Addin for org.freedesktop.Sdk</td>
      <td>1.4</td>
    </tr>
  </table>

  For example, you can install the standard runtime for Gnome 3.20 with:

      xdg-app --user install gnome org.gnome.Platform 3.20

  Additionally there is a repo with stable builds of some gnome applications, which you can list with:

      xdg-app --user remote-add --gpg-key=gnome-sdk.gpg gnome-apps http://sdk.gnome.org/repo-apps/
      xdg-app --user remote-ls gnome-apps --app

  All these apps are using a version name of "stable", and will be updated to the latest stable whenever there is a new gnome release. To install e.e. gedit you would run:

      xdg-app --user install gnome-apps org.gnome.gedit stable

  and to update it:

      xdg-app --user update org.gnome.gedit stable

  Nightly build runtimes
  ======================

  There are regular (nightly builds) of the latest gnome and freedesktop runtimes from git. These are not stable and have no guarantees on ABI stability or if they even work. However they are a useful way to test the latest version of gnome that is in development.

  Additionally, the same repository contains a few applications built against this runtime allowing you to test it.

  Repo
  ----

  The repository is available at: http://sdk.gnome.org/nightly/repo/ All releases are manually signed with this key: https://sdk.gnome.org/nightly/keys/nightly.gpg

  You can add this repository to your local home directory with this command:

      xdg-app --user remote-add --gpg-key=nightly.gpg gnome-nightly http://sdk.gnome.org/nightly/repo/

  This repository contains these runtimes:

  <table class="full"><!-- fixme make into markdown tables -->
    <tr>
      <th>Name</th><th>Description</th><th class="nowrap">Versions</th>
    </tr>
    <tr>
      <td>org.gnome.Platform</td>
      <td> The unstable Gnome runtime</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.gnome.Platform.Locale</td>
      <td>Addins to org.gnome.Platform that adds locale data and translations</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.gnome.Sdk</td>
      <td>The development runtime used to build apps, and required by apps like gnome-builder </td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.gnome.Sdk.Locale</td>
      <td>Locale addins for org.gnome.Sdk</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.gnome.Sdk.Debug</td>
      <td>Debug info addin for org.gnome.Sdk</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.freedesktop.Platform</td>
      <td>Smaller runtime with basic platform including X11, wayland, mesa, dbus, SDL, etc. Used as a base for org.gnome.Platform and other runtimes.</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.freedesktop.Platform.Locale</td>
      <td>Addins to org.gnome.Platform that adds locale data and translations</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.freedesktop.Sdk</td>
      <td>The development runtime used by org.freedesktop.Platform</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.freedesktop.Sdk.Locale</td>
      <td>Locale addins for org.freedesktop.Sdk</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.freedesktop.Sdk.Debug</td>
      <td>Debug info Addin for org.freedesktop.Sdk</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.freedesktop.BasePlatform</td>
      <td>Yocto based core for org.freedesktop.Platform</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.freedesktop.BaseSdk</td>
      <td>Yocto based core for org.freedesktop.Sdk</td>
      <td>master</td>
    </tr>
  </table>
  
  Additionally there is a repo with nightly builds of some gnome applications, which you can list with:

      xdg-app --user remote-add --gpg-key=nightly.gpg gnome-nightly-apps http://sdk.gnome.org/nightly/repo-apps/
      xdg-app --user remote-ls gnome-nightly-apps --app

  The current list is:

      org.gnome.Builder
      org.gnome.Calculator
      org.gnome.Calendar
      org.gnome.Characters
      org.gnome.Dictionary
      org.gnome.Documents
      org.gnome.Epiphany
      org.gnome.Evince
      org.gnome.Games
      org.gnome.Maps
      org.gnome.News
      org.gnome.Polari
      org.gnome.Software.XdgApp
      org.gnome.Todo
      org.gnome.Weather
      org.gnome.bijiben
      org.gnome.clocks
      org.gnome.eog
      org.gnome.gedit
      org.gnome.iagno

  Of particular interest is org.gnome.Software.XdgApp, which lets you browse and install xdg-app with a graphical tool.

  All these apps are using a version name of "master". To install e.e. gedit you would run:

      xdg-app --user install gnome-nightly-apps org.gnome.gedit master

  and to update it:

      xdg-app --user update org.gnome.gedit master

</div></div></div></section>
