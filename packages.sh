#! /usr/bin/bash

# Shell
pacman -S fish
chsh /usr/bin/fish

# Window manager
pacman -S i3-gaps i3lock i3status dmenu

# Audio
pacman -S pulseaudio

# Displays
pacman -S xrandr # Program to manage displays
pacman -S arandr # GUI to manage displays
pacman -S xbacklight # brightness

# Network
pacman -S networkmanager
pacman -S iw

# File manager
pacman -S pcmanfm

# Web
pacman -S firefox

# Theming
pacman -S picom # Blur, transparency, etc
pacman -S nitrogen # wallpaper
pacman -S lxappearance # gtk-themes

pacman -S ttf-ubuntu-font-family
pacman -S ttf-jetbrains-mono
pacman -S ttf-font-awesome

git clone https://aur.archlinux.org/bumblebee-status.git
cd bumblebee-status
makepkg -sicr ## status bar to replace i3status

# Terminal
pacman -S alacritty

# Development
pacman -S vscode

pacman -S git

pacman -S python3
pacman -S python-pip
pacman -S nodejs
npm install -g yarn 

# Chat
pacman -S discord

# Misc
pacman -S neofetch
pacman -S htop

