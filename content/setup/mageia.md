+++
title = "Mageia"
description = "Mageia Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Mageia/", "/setup/Mageia.html"]

[extra]
logo = "mageia.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>A flatpak package is available for Mageia 6 and newer. To install with DNF, run the following as root:</p> <terminal-command>dnf install flatpak</terminal-command> <p>Or, to install with <code>urpmi</code>, run:</p> <terminal-command>urpmi flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a> or run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
