#!/bin/sh

# ----- installing the base system

# update
sudo pacman -Syu
# mirror ranking
sudo pacman -S --noconfirm pacman-contrib
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sudo chmod a+w /etc/pacman.d/mirrorlist
sudo rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --gendb
# audio
sudo pacman -S --noconfirm pipewire-pulse
sudo pacman -S --noconfirm alsa-utils
# display server, compositor, GPU driver
sudo pacman -S --noconfirm base-devel xorg xorg-xinit xorg-xinput picom nvidia nvidia-settings
# window manager, switcher
sudo pacman -S --noconfirm qtile rofi
yay -S --noconfirm qtile-extras
# wallpaper
sudo pacman -S --noconfirm nitrogen
# python, psutil
sudo pacman -S --noconfirm python python-psutil
# task manager
sudo pacman -S --noconfirm htop
# theme, icons, cursor, font
yay -S --noconfirm catppuccin-gtk-theme-macchiato
yay -S --noconfirm qogir-cursor-theme-git
sudo pacman -S --noconfirm papirus-icon-theme
sudo pacman -S nerd-fonts
# terminal, shell, editor, neofetch
sudo pacman -S --noconfirm kitty starship neofetch nano
# file archiver, file manager
sudo pacman -S --noconfirm p7zip ranger thunar gvfs
# Image and Video Player, Screenshot
sudo pacman -S --noconfirm maim feh ffmpeg

# Software
sudo pacman -S --noconfirm firefox discord keepassxc gpick gamemode
sudo pacman -S steam
yay -S --noconfirm teamspeak


# -----  configs

# copying the configs
cp -r ~/Github/arch/.config/* ~/.config/
cp -r ~/Github/arch/.home/* ~/
chmod +x ~/.config/qtile/autostart.sh
cp ~/Github/arch/.images/* ~/Pictures
cp ~/Github/arch/mouse.sh ~/mouse.sh
chmod +x ~/mouse.sh
cp -r ~/Github/arch/.etc/* /etc/

# compiling the qtile config
python -m py_compile ~/.config/qtile/config.py

# setting up the wallpaper
nitrogen ~/Pictures/ --random --set-scaled --save
nitrogen --restore

# creating xorg.conf
sudo nvidia-xconfig
