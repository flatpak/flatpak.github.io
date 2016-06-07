---
title: Flatpak Runtimes
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown

  # Runtimes

  This page lists the runtimes that are currently available for flatpak.

  ## Stable Runtimes

  Stable runtimes are currently available in Freedesktop and GNOME flavours. These are hosted at [https://sdk.gnome.org/repo/](https://sdk.gnome.org/repo/) and signed with the key at [https://sdk.gnome.org/keys/gnome-sdk.gpg](https://sdk.gnome.org/keys/gnome-sdk.gpg). The repository can be added with:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/
  </pre>

  GNOME runtimes are released with each major release and contain the main GNOME platform libraries. They are based on the official freedesktop.org runtime. At the moment they only receive minor bug fixing and security updates, but should be considered ABI stable and frozen.

  ### Available stable runtimes

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
      <td>The development runtime used to build apps, and required by apps like gnome-builder</td>
      <td>3.16, 3.18, 3.20</td>
    </tr>
    <tr>
      <td>org.gnome.Sdk.Locale</td>
      <td>Locale info addin for org.gnome.Sdk</td>
      <td>3.20</td>
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
      <td>1.4</td>
    </tr>
    <tr>
      <td>org.freedesktop.Sdk.Debug</td>
      <td>Debug info Addin for org.freedesktop.Sdk</td>
      <td>1.4</td>
    </tr>
    <tr>
      <td>org.freedesktop.BasePlatform</td>
      <td>Yocto based core for org.freedesktop.Platform</td>
      <td>1.4</td>
    </tr>
    <tr>
      <td>org.freedesktop.BaseSdk</td>
      <td>Yocto based core for org.freedesktop.Sdk</td>
      <td>1.4</td>
    </tr>
  </table>

  ## Nightly Runtimes

  Regular nightly builds are available of the latest GNOME and Freedesktop runtimes from Git. These are not stable and have no guarantees on ABI stability or if they even work. However, they are a useful way to test the latest version that is in development. The same repository also contains a few applications built against this runtime allowing you to test it.

  The nightly repository is available at [https://sdk.gnome.org/nightly/repo/](https://sdk.gnome.org/nightly/repo/). All releases are manually signed with the key at [https://sdk.gnome.org/nightly/keys/nightly.gpg](https://sdk.gnome.org/nightly/keys/nightly.gpg). This repository can be added with:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --gpg-import=nightly.gpg gnome-nightly https://sdk.gnome.org/nightly/repo/
  </pre>

  ### Available nightly runtimes

  <table class="full"><!-- fixme make into markdown tables -->
    <tr>
      <th>Name</th><th>Description</th><th class="nowrap">Versions</th>
    </tr>
    <tr>
      <td>org.gnome.Platform</td>
      <td> The unstable GNOME runtime</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.gnome.Platform.Locale</td>
      <td>Addins to org.gnome.Platform that adds locale data and translations</td>
      <td>master</td>
    </tr>
    <tr>
      <td>org.gnome.Sdk</td>
      <td>The development runtime used to build apps, and required by apps like GNOME Builder </td>
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
  </table>

  ## KDE Runtimes

  The KDE project has started to provide experimental runtimes. See their [Flatpak page](https://community.kde.org/Flatpak) for details on how to use them.
</div></div></div></section>
