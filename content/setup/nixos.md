+++
title = "NixOS"
description = "NixOS Quick Setup"
template = "setup-distro.html"
aliases = ["/setup/NixOS/", "/setup/NixOS.html"]

[extra]
logo = "nixos.svg"

[[extra.steps]]
name = "Install Flatpak"
text = '''<p>To install Flatpak, set NixOS option <code>services.flatpak.enable</code> to <code>true</code> by putting the following into your <code>/etc/nixos/configuration.nix</code>:</p> <terminal-command>services.flatpak.enable = true;</terminal-command> <p>Then, rebuild and switch to the new configuration with:</p> <terminal-command>sudo nixos-rebuild switch</terminal-command> <p>For more details see the <a href='https://nixos.org/manual/nixos/stable/index.html#module-services-flatpak'>NixOS documentation</a>.</p>'''

[[extra.steps]]
name = "Add the Flathub repository"
text = '''<p>Flathub is the best place to get Flatpak apps. To enable it, run:</p> <terminal-command>flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo</terminal-command>'''

[[extra.steps]]
name = "Restart"
text = '''<p>To complete setup, restart your system. Now all you have to do is <a href="https://flathub.org/">install apps</a>!</p>'''
+++
