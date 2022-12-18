#! /usr/bin/bash

# Display manager
pacman -S xdm-archlinux
systemctl enable xdm-archlinux

# File manager
pacman -S pcmanfm

# Web
pacman -S firefox

# Theming
pacman -S picom
pacman -S nitrogen
pacman -S lxappearance

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

