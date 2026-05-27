+++
title = "Rocky Linux"
description = "Rocky Linux Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Rocky Linux/", "/setup/Rocky Linux.html"]

[extra]
logo = "rockylinux.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>Flatpak is installed by default on Rocky Linux 8 and newer, when installed with a software selection that includes GNOME (Server with GUI, Workstation). If you are using such a system, you may skip this step. To install Flatpak on Rocky Linux, run the following in a terminal:</p> <terminal-command>sudo dnf install flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a> or run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
