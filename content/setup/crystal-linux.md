+++
title = "Crystal Linux"
description = "Crystal Linux Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Crystal Linux/", "/setup/Crystal Linux.html"]

[extra]
logo = "crystallinux.svg"
introduction = '''<h2>Flatpak is installed by default on Crystal Linux.</h2> <p>If you didn't use jade_gui to install crystal or selected not to install it, you can set Flatpak up by using the following steps.</p>'''

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak in Crystal Linux, you must first make sure your packages are up to date. Run the following in a terminal:</p> <terminal-command>ame upg</terminal-command> <p>Then install Flatpak:</p> <terminal-command>ame ins flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
