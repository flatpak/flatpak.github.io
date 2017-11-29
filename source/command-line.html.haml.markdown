---
title: Flatpak Command Line Tutorial
description: How to use the command line to manage installed applications.
---
<section class=""><div class="container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown
  # Using Flatpak from the command-line

  The easiest way to install and update Flatpak applications is using a dedicated software management app, like GNOME Software. Several distributions allow this, including Fedora, openSUSE and Arch. If this graphical solution isn't available, then it is still possible to install and manage Flatpak applications from the command line.

  If you are using the command line, the [applications page](apps.html) includes the commands that are needed to install each application. This guide includes additional commands that you can use to manage those applications once you have installed them.

  ## Managing applications

  ### Listing installed applications

  To list all the Flatpak applications that you have installed, run:

  <pre>
  <span class="unselectable">$ </span>flatpak list
  </pre>

  Application names are given in reverse DNS format - like a reversed web address - with three parts separated by dots. This is a unique identifier that is used throughout Flatpak.

  ### Running applications

  Once a Flatpak application has been installed, it can be launched in the usual way from your desktop. Flatpak applications can also be run from the command line, though:

  <pre>
  <span class="unselectable">$ </span>flatpak run APPLICATION
  </pre>

  `APPLICATION` should be replaced with the name of the application that you want to launched, in the standard reverse DNS format.

  ### Removing applications

  Uninstalling an application is a simple command very similar to the `run` command:

  <pre>
  <span class="unselectable">$ </span>flatpak uninstall APPLICATION
  </pre>

  ### Updating

  Updating all your installed applications with FLatpak is a single command:

  <pre>
  <span class="unselectable">$ </span>flatpak update
  </pre>

  It is also possible to update an individual application by adding its name to the command:

  <pre>
  <span class="unselectable">$ </span>flatpak update APPLICATION
  </pre>

  ## Repositories

  With Flatpak, repositories can include one or many applications. They can either be added manually or as part of installing an application. To list the Flatpak repositories that you have added, run:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-list
  </pre>

  It is then possible to list all the applications in each repository using:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-ls --app REPOSITORY
  </pre>

  `REPOSITORY` should be replaced by the repository name given by `flatpak remote-list`. The `--app` option means that only applications will be listed. Without it, runtimes that are provided by the repository will also be listed.

  Finally, it is possible to remove a repository using:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-delete REPOSITORY
  </pre>

  ## Runtimes

  Runtimes are collections of dependencies that are used by applications. They are provided by repositories, in much the same way as repositories of packages. When installing an application, Flatpak will automatically install any required runtimes if they are available. This does require that the repositories containing those runtimes are added first.

  In most cases, the flathub repository contains all the runtimes you might need. To add it, run:

  <pre>
  <span class="unselectable">$ </span>flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  </pre>

  `--if-not-exists` means that the repository will only be added if it isn't there already and `flathub` is the name for the repository.

</div></div></div></section>
