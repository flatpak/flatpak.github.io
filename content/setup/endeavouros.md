+++
title = "EndeavourOS"
description = "EndeavourOS Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/EndeavourOS/", "/setup/EndeavourOS.html"]

[extra]
logo = "endeavouros.svg"
logo_dark = "endeavouros-dark.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on EndeavorOS, you must first make sure your installation is up to date, run the following in a terminal:</p> <terminal-command>sudo pacman -Syu</terminal-command> <p>Then install Flatpak:</p> <terminal-command>sudo pacman -S flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>Note: graphical installation of Flatpak apps may not be possible with EndeavourOS.</p>'''
+++
