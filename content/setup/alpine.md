+++
title = "Alpine"
description = "Alpine Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Alpine/", "/setup/Alpine.html"]

[extra]
logo = "alpine.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>Flatpak can be installed from the community repository. Run the following in a terminal:</p> <terminal-command>doas apk add flatpak</terminal-command>'''

[[extra.steps]]
name = "Install the Software Flatpak plugin"
text = '''<p>You can install the Flatpak plugin for either the GNOME Software (since v3.13) or KDE Discover (since v3.11), making it possible to install apps without needing the command line. To install, for GNOME Software run:</p> <terminal-command>doas apk add gnome-software-plugin-flatpak</terminal-command> <p>For KDE Discover run:</p> <terminal-command>doas apk add discover-backend-flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a> or run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete the setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
