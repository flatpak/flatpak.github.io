+++
title = "Fedora"
description = "Fedora Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Fedora/", "/setup/Fedora.html"]

[extra]
logo = "fedora.svg"
introduction = '''<p>Flatpak is installed by default on Fedora Workstation, Fedora Silverblue, and Fedora Kinoite. To get started, all you need to do is enable Flathub, which is the best way to get Flatpak apps. Flathub is pre-configured as a part of the <a href="https://docs.fedoraproject.org/en-US/workstation-working-group/third-party-repos/">Third-Party Repositories</a>. Alternatively, you can download and install the <a class="btn btn-default" href="https://dl.flathub.org/repo/flathub.flatpakrepo">Flathub repository file</a>.</p> <p>Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>The above links should work on the default GNOME and KDE Fedora installations, but if they fail for some reason you can manually add the Flathub remote by running:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''
+++
