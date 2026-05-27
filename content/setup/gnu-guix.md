+++
title = "GNU Guix"
description = "GNU Guix Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/GNU Guix/", "/setup/GNU Guix.html"]

[extra]
logo = "guix.svg"
logo_dark = "guix-dark.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on GNU Guix, run the following in a terminal:</p> <terminal-command>guix install flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>Note: graphical installation of Flatpak apps may not be possible with GNU Guix.</p>'''
+++
