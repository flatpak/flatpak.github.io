+++
title = "Deepin"
description = "Deepin Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Deepin/", "/setup/Deepin.html"]

[extra]
logo = "deepin.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak on Deepin, run the following in a terminal:</p> <terminal-command>sudo apt install flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Install the Deepin themes"
text = '''<p>To install light and dark themes, run:</p> <terminal-command> flatpak install flathub org.gtk.Gtk3theme.deepin\n flatpak install flathub org.gtk.Gtk3theme.deepin-dark\n </terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
