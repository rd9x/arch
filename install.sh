#!/bin/sh

# ----- installing the base system

# update
sudo pacman -Syu
# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --gendb
# audio, display server, compositor, GPU driver
sudo pacman -S --noconfirm pipewire-pulse alsa-utils base-devel xorg xorg-xinit xorg-xinput picom nvidia nvidia-settings
# window manager, switcher
sudo pacman -S --noconfirm qtile rofi
yay -S --noconfirm qtile-extras
# python, psutil
sudo pacman -S --noconfirm python python-psutil
# wallpaper, theme, icons, cursor, font
yay -S --noconfirm catppuccin-gtk-theme-macchiato
yay -S --noconfirm qogir-cursor-theme-git
sudo pacman -S --noconfirm nitrogen papirus-icon-theme breeze breeze-gtk
sudo pacman -S nerd-fonts
# task manager
sudo pacman -S --noconfirm htop
# terminal, shell, editor, neofetch
sudo pacman -S --noconfirm kitty starship neofetch nano
# file archiver, file manager, image and video player, screenshot
sudo pacman -S --noconfirm p7zip ranger thunar gvfs maim feh ffmpeg

# Software
sudo pacman -S --noconfirm firefox discord qtpass gpick gamemode thunderbird openvpn openresolv wget
sudo pacman -S steam
yay -S --noconfirm teamspeak
sudo wget "https://raw.githubusercontent.com/ProtonVPN/scripts/master/update-resolv-conf.sh" -O "/etc/openvpn/update-resolv-conf"
sudo chmod +x "/etc/openvpn/update-resolv-conf"

# -----  configs

# copying the configs
cp -r ~/Github/arch/.config/. ~/.config/
cp -r ~/Github/arch/.home/. ~/
chmod +x ~/.config/qtile/autostart.sh
cp ~/Github/arch/.images/* ~/Pictures
cp ~/Github/arch/.etc/environment /etc/environment

# compiling the qtile config
python -m py_compile ~/.config/qtile/config.py

# setting up the wallpaper
nitrogen ~/Pictures/ --random --set-scaled --save
nitrogen --restore

# creating xorg.conf
sudo nvidia-xconfig

# set compose key
setxkbmap -option compose:ralt
