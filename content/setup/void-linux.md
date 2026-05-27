+++
title = "Void Linux"
description = "Void Linux Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Void Linux/", "/setup/Void Linux.html"]

[extra]
logo = "void.svg"
logo_dark = "void-dark.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on Void Linux, run the following in a terminal:</p> <terminal-command>sudo xbps-install -S flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
