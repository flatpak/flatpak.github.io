+++
title = "Red Hat Enterprise Linux"
description = "Red Hat Enterprise Linux Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Red Hat Enterprise Linux/", "/setup/Red Hat Enterprise Linux.html"]

[extra]
logo = "redhat.svg"
introduction = '''<p>Flatpak is installed by default on Red Hat Enterprise Linux Workstation 9 and newer. To get started, all you need to do is enable Flathub, which is the best way to get Flatpak apps. Just download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a>.</p> <p>To install Flatpak on Red Hat Enterprise Linux Workstation 8 or older, run the following in a terminal:</p> <!-- Apparently the GNOME Software Flatpak plugin is shipped as part of the GNOME Software package, so there’s no need to separately install it --> <terminal-command>sudo yum install flatpak</terminal-command> <p>Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>The above links should work on the default Red Hat Enterprise Linux Workstation 9 installation, but if they fail for some reason you can manually add the Flathub remote by running:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''
+++
