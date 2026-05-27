+++
title = "Solus"
description = "Solus Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Solus/", "/setup/Solus.html"]

[extra]
logo = "solus.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on Solus, open the Terminal app and run:</p> <terminal-command>sudo eopkg install flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a> or run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>Note: graphical installation of Flatpak apps is not yet possible with Solus, but will be available in the near future.</p>'''
+++
