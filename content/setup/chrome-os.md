+++
title = "Chrome OS"
description = "Chrome OS Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/Chrome OS/", "/setup/Chrome OS.html"]

[extra]
logo = "chrome-os.svg"
introduction = '''<p>Flatpak applications can be installed on ChromeOS with the Crostini Linux compatibility layer. This is not available for all ChromeOS devices, so you should ensure your device is compatible before proceeding. A list of compatible devices is maintained <a href="https://www.reddit.com/r/Crostini/wiki/getstarted/crostini-enabled-devices">here</a>.</p>'''

[[extra.steps]]
name = "Enable Linux support"
text = '''<p>Navigate to <a href="chrome://os-settings">chrome://os-settings</a>, and scroll down to <strong>Developers</strong> and turn on <i>Linux development environment</i>. ChromeOS will take some time downloading and installing Linux.</p>'''

[[extra.steps]]
name = "Start a Linux terminal"
text = '''<p>Press the Search/Launcher key, type "Terminal", and launch the Terminal app.</p>'''

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak, run the following in the terminal:</p> <terminal-command>sudo apt install flatpak</terminal-command>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart Linux. You can do this by right-clicking terminal, and then clicking "Shut down Linux". Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
