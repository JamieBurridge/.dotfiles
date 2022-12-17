#! /usr/bin/bash

# Display manager
pacman -S xdm-archlinux
systemctl enable xdm-archlinux

# Web
pacman -S firefox

# Theming
pacman -S picom
pacman -S nitrogen

# Terminal
pacman -S alacritty

# Development
pacman -S git
pacman -S vscode

# Chat
pacman -S discord

# Misc
pacman -S neofetch
pacman -S htop

