# This is an installation script for my system
# This is targeted towards the Fedora 42 XFCE spin
# This probably won't work on your system out from the get go
# This is only designed to be used on fresh installs to speed up the process

import subprocess

print("Enabling RPM Fusion...")
subprocess.run("sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm")

print("Enabling Non-free...")
subprocess.run("sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm")

print("Enabling google-chrome repo...")
subprocess.run("sudo dnf config-manager setopt google-chrome.enabled=1")


dependencies = [
        "@development-tools",
        "git",
        "python",
        "qtile",
        "kitty",
        "fastfetch",
        "redshift",
        "lua",
        "luarocks",
        "zsh",
        "tmux",
        "zathura",
        "zathura-pdf-poppler",
        "emacs",
        "mpv",
        ]

print("Installing dependencies")
for i in dependencies:
    subprocess.run(f"sudo dnf install {i} -y")

print("Installing rust")
subprocess.run("curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh")

# check if dirs for config already exist.
# tbc
