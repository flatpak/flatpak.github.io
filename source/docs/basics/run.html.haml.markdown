---
title: Install and Run a Flatpak
description: How to install and run a Flatpak application.
---
<section class=""><div class="doc-container"><div class="row"><div class="col-lg-10 col-lg-offset-1">
:markdown

 # Install and Run a Flatpak

 With Flatpak, applications can be safely updated on a running system, without
 fear of conflicts occuring. Flatpak also allows multiple versions of the same
 application to be installed at the same time, which is great for testing
 development or testing versions. And in the future, Flatpak's security first approach
 guarantee greater privacy and peace of mind.

 Various applications are available as Flatpaks, including stable and nightly
 GNOME applications, and a collection of nightly builds of graphics applications like
 GIMP, Inkscape and MyPaint.See the [apps page](/docs/basics/apps.html) for more details.

 In the near future, you will be able to install flatpaks painlessly from graphical tools
 such as GNOME Software. Until then, you can use the commandline tool to install and update flatpaks.

 ### 1. Install Flatpak
 Before you can install applications with Flatpak, you need to install
 Flatpak itself. Currently this has to be done using the command line.
 This section contains instructions for installing Flatpak on Fedora or Ubuntu.
 Details on how to install Flatpak on other distros are available on the
 [getting Flatpak](/docs/basics/getting.html) page.

 With Fedora 23 or later, run:
 <pre>
 <span class="unselectable">$ </span>sudo dnf install flatpak
 </pre>


 On Ubuntu, Flatpak is available through a PPA. To install it, run:

 <pre>
 <span class="unselectable">$ </span>sudo add-apt-repository ppa:alexlarsson/flatpak
 <span class="unselectable">$ </span>sudo apt update
 <span class="unselectable">$ </span>sudo apt install flatpak
 </pre>

 ### 2. Add repositories

 Flatpak allows you to install software from remote repositories. For this
 example we're going to use two repositories: one which contains GNOME apps,
 and one which contains the runtime that provides the dependencies
 they need.

 <pre>
 <span class="unselectable">$ </span>flatpak remote-add --from gnome https://sdk.gnome.org/gnome.flatpakrepo
 <span class="unselectable">$ </span>flatpak remote-add --from gnome-apps https://sdk.gnome.org/gnome-apps.flatpakrepo
 </pre>

 Once this is complete, you're all set to install some apps!

 ### 3. View, install and run apps

 To view which apps are available in the gnome-apps repository, just run:

 <pre>
 <span class="unselectable">$ </span>flatpak remote-ls gnome-apps --app
 </pre>

 To download and install an app, like gedit, run:
 <pre>
 <span class="unselectable">$ </span>flatpak install gnome-apps org.gnome.gedit
 </pre>
 This will automatically find and install the required runtime that the application depends on from
 the set of configured remotes.

 Installed applications should appear in the usual place in your desktop. You can also run them from the command line:
 <pre>
 <span class="unselectable">$ </span>flatpak run org.gnome.gedit
 </pre>

</div></div></div></section>
