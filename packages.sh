#! /usr/bin/bash

# Shell
pacman -S fish
chsh /usr/bin/fish

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
pacman -S ttf-ubuntu-font-family
pacman -S ttf-jetbrains-mono
pacman -S ttf-font-awesome
git clone https://aur.archlinux.org/bumblebee-status.git
cd bumblebee-status
makepkg -sicr

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

