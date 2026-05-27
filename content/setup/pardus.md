+++
title = "Pardus"
description = "Pardus Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Pardus/", "/setup/Pardus.html"]

[extra]
logo = "pardus.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>A flatpak package is available in Pardus 2019 and newer. To install it, run the following as root:</p> <terminal-command>sudo apt install flatpak</terminal-command>'''

[[extra.steps]]
name = "Install the Software Flatpak plugin"
text = '''<p>If you are running GNOME, it is also a good idea to install the Flatpak plugin for GNOME Software. To do this, run:</p> <terminal-command>sudo apt install gnome-software-plugin-flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a> or run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
