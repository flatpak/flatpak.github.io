+++
title = "Kubuntu"
description = "Kubuntu Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Kubuntu/", "/setup/Kubuntu.html"]

[extra]
logo = "kubuntu.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on Kubuntu, open Discover, go to Settings, install the Flatpak backend and restart Discover.</p>'''

[[extra.steps]]
name = "Install the Flatpak system settings add-on"
text = '''<p>To integrate Flatpak support into the Plasma System Settings, open the Terminal app and run:</p> <terminal-command>sudo apt install kde-config-flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, open Discover, go to Settings and add the Flathub repository.</p>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
