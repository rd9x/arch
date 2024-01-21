#!/bin/sh

# ---------- System Installation ----------


# system update
sudo pacman -Syu

# yay installation
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --gendb


# ----- Audio and Display

# audio
sudo pacman -S --noconfirm pipewire-pulse alsa-utils pavucontrol

# compositor
sudo pacman -S --noconfirm picom 

# display server 
sudo pacman -S --noconfirm base-devel xorg xorg-xinit xorg-xinput

# GPU driver
sudo pacman -S --noconfirm nvidia nvidia-settings

# window manager + switcher
sudo pacman -S --noconfirm qtile rofi
yay -S --noconfirm qtile-extras


# ----- System

# browser
sudo pacman -S --noconfirm firefox

# file manager + 7zip/unrar
sudo pacman -S --noconfirm thunar gvfs xfce4-settings
sudo pacman -S --noconfirm ranger ncdu
sudo pacman -S --noconfirm p7zip unrar

# multimedia (image, screenshot, video) + color picker
sudo pacman -S --noconfirm feh maim ffmpeg gpick

# task manager
sudo pacman -S --noconfirm htop

# python, psutil
sudo pacman -S --noconfirm python python-psutil

# terminal, shell, editor, neofetch
sudo pacman -S --noconfirm kitty starship nano neofetch


# ----- Theme

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

# wallpaper
sudo pacman -S --noconfirm nitrogen


# ---------- System Configuration ----------

# copying the config files
cp -r ~/Github/arch/.config/. ~/.config
cp -r ~/Github/arch/.home/. ~
cp ~/Github/arch/.images/* ~/Pictures
cp ~/Github/arch/.etc/environment /etc/environment

# compiling the qtile config
chmod +x ~/.config/qtile/autostart.sh
python -m py_compile ~/.config/qtile/config.py

# setting up the wallpaper
nitrogen ~/Pictures/ --random --set-scaled --save
nitrogen --restore

# creating xorg.conf
sudo nvidia-xconfig


# ---------- Software Installation ----------

# Discord
# sudo pacman -S --noconfirm discord

# QTPass + Kleopatra
sudo pacman -S --noconfirm qtpass kleopatra

# Steam, gamemode, Mangohud
sudo pacman -S steam
sudo pacman -S --noconfirm gamemode mangohud

# Teamspeak
yay -S --noconfirm teamspeak

# Thunderbird
sudo pacman -S --noconfirm thunderbird

# MullvadVPN
yay -S mullvad-vpn

# ---------- Archiv ----------

# ProtonVPN / OpenVPN
# sudo pacman -S --noconfirm wget openvpn openresolv
# sudo wget "https://raw.githubusercontent.com/ProtonVPN/scripts/master/update-resolv-conf.sh" -O "/etc/openvpn/update-resolv-conf"
# sudo chmod +x "/etc/openvpn/update-resolv-conf"
