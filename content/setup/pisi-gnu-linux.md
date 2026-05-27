+++
title = "Pisi GNU/Linux"
description = "Pisi GNU/Linux Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Pisi GNU Linux/", "/setup/Pisi GNU Linux.html"]

[extra]
logo = "pisi.svg"
logo_dark = "pisi-dark.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>A flatpak package is available in Pisi 2.1 and newer. To install it, run the following as root:</p> <terminal-command>sudo pisi it flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>Note: graphical installation of Flatpak apps may not be possible with Pisi GNU/Linux.</p>'''
+++
