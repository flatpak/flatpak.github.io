+++
title = "openSUSE"
description = "openSUSE Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/openSUSE/", "/setup/openSUSE.html"]

[extra]
logo = "opensuse.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>Flatpak is available in the default repositories of all currently maintained openSUSE Leap and openSUSE Tumbleweed versions.</p> <p>If you prefer a graphical installation, you can install Flatpak using a "1-click installer" from <a href="https://software.opensuse.org/package/flatpak">software.opensuse.org</a>. If your distribution version is not shown by default, click <em>Show</em> under Unsupported distributions category and then select from the list.</p> <p>Alternatively, install Flatpak from the command line using Zypper:</p> <terminal-command>sudo zypper install flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a> or run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
