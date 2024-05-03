#!/bin/sh

# ---------- System Utilities and Tools ----------

# terminal, shell, editor, neofetch
sudo pacman -S --noconfirm kitty starship nano neofetch

# task manager
sudo pacman -S --noconfirm htop

# python, psutil
sudo pacman -S --noconfirm python python-psutil

# browser
sudo pacman -S --noconfirm firefox

# file manager + 7zip/unrar
sudo pacman -S --noconfirm thunar gvfs xfce4-settings
sudo pacman -S --noconfirm ranger ncdu
sudo pacman -S --noconfirm p7zip unrar

# multimedia (image, screenshot, video) + color picker
sudo pacman -S --noconfirm feh maim ffmpeg gpick

# ----- Configuration Files

