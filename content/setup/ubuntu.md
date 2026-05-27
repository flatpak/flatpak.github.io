+++
title = "Ubuntu"
description = "Ubuntu Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Ubuntu/", "/setup/Ubuntu.html"]

[extra]
logo = "ubuntu.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on <strong>Ubuntu 18.10 (Cosmic Cuttlefish) or later</strong>, open the Terminal app and run:</p> <terminal-command>sudo apt install flatpak</terminal-command>'''

[[extra.steps]]
name = "Install GNOME Software Flatpak plugin"
text = '''<p>The GNOME Software plugin makes it possible to install apps without needing the command line. To install, run:</p> <terminal-command>sudo apt install gnome-software-plugin-flatpak</terminal-command> <p><strong>Note:</strong> Ubuntu distributes GNOME Software as a Snap in versions 20.04 to 23.04, and replaced it with App Center in 23.10 and newer—neither of which support installing Flatpak apps. Installing the Flatpak plugin will also install a deb version of GNOME Software, resulting in two "Software" apps being installed at the same time on Ubuntu 20.04 to 23.04, and a single new "Software" app on Ubuntu 23.10 and newer.</p>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a> or run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
