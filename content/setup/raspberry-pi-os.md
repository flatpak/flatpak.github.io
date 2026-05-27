+++
title = "Raspberry Pi OS"
description = "Raspberry Pi OS Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Raspberry Pi OS/", "/setup/Raspberry Pi OS.html"]

[extra]
logo = "raspberry-pi-os.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>A flatpak package is available in Raspberry Pi OS (previously called Raspbian) Stretch and newer. To install it, run the following as root:</p> <terminal-command>sudo apt install flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command> <p><b>Important note:</b> It is recommended to use Raspberry Pi OS 64-bit as newer applications are more likely to be available for that platform only.</p>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>Note: graphical installation of Flatpak apps may not be possible with Raspberry Pi OS.</p>'''
+++
