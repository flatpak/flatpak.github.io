+++
title = "Slackware"
description = "Slackware Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Slackware/", "/setup/Slackware.html"]

[extra]
logo = "slackware.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>A Flatpak package is available on SlackBuilds. To install it (assuming you use Sbopkg/sqg), first create the queuefile and run the following as root:</p> <terminal-command>sqg -p flatpak</terminal-command> <p>Then compile it. Load the queuefile, press 'Q', and wait:</p> <terminal-command>sbopkg -i flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p> <p>Note: graphical installation of Flatpak apps may not be possible with Slackware.</p>'''
+++
