+++
title = "ALT Linux"
description = "ALT Linux Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/ALT Linux/", "/setup/ALT Linux.html"]

[extra]
logo = "altlinux.svg"
logo_dark = "altlinux-dark.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on operating systems of the Alt family, open the Terminal app and run:</p> <terminal-command> su -
 apt-get update
 apt-get install flatpak
 </terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it on your Alt system, run:</p> <terminal-command> su -
 apt-get update
 apt-get install flatpak-repo-flathub
 </terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>Restart your device to complete the Flatpak installation. Now you can <a href="https://flathub.org/">install apps</a>!</p>'''
+++
