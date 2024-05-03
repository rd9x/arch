#!/bin/sh

# ---------- Theme ----------

# cursor 
yay -S --noconfirm qogir-cursor-theme-git

# font + emojis
sudo pacman -S nerd-fonts
sudo pacman -S --noconfirm noto-fonts-emoji

# icons
sudo pacman -S --noconfirm papirus-icon-theme

# system theme
yay -S --noconfirm catppuccin-gtk-theme-macchiato
sudo pacman -S --noconfirm breeze breeze-gtk
