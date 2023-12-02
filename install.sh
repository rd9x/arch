#!/bin/sh

# ----- installing the base system

# display server
sudo pacman -S --noconfirm xorg xorg-xinit xorg-xinput base-devel
# drivers GPU
sudo pacman -S --noconfirm nvidia
# window manager
sudo pacman -S --noconfirm qtile
# window switcher
sudo pacman -S --noconfirm rofi
# X compositor
sudo pacman -S --noconfirm picom
# audio
sudo pacman -S --noconfirm pipewire-pulse
# wallpaper
sudo pacman -S --noconfirm nitrogen
# python
sudo pacman -S --noconfirm python
# python - psutil
sudo pacman -S --noconfirm python-psutil
# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --gendb
# font
sudo pacman -S nerd-fonts
# theme
sudo pacman -S --noconfirm arc-gtk-theme
# theme - icons
sudo pacman -S --noconfirm papirus-icon-theme
# theme - cursor
yay -S qogir-cursor-theme-git
# terminal
sudo pacman -S --noconfirm alacritty
# shell
sudo pacman -S --noconfirm starship
# neofetch
sudo pacman -S --noconfirm neofetch
# editor
sudo pacman -S --noconfirm nano
# file manager (terminal)
sudo pacman -S --noconfirm ranger
# file manager
sudo pacman -S --noconfirm thunar

# -----  configs and configuration

# creating directories
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/picom
mkdir -p ~/.config/qtile
mkdir -p ~/Images

# copying the configs
cp ~/Github/arch/.bashrc ~/.bashrc 
cp ~/Github/arch/.bash_profile ~/.bash_profile
cp ~/Github/arch/.gtkrc-2.0 ~/.gtkrc-2.0
cp ~/Github/arch/.xinitrc ~/.xinitrc
cp ~/Github/arch/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp ~/Github/arch/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp ~/Github/arch/.config/picom/picom.conf ~/.config/picom/picom.conf
cp ~/Github/arch/.config/qtile/config.py ~/.config/qtile/config.py
cp ~/Github/arch/.config/qtile/autostart.sh ~/.config/qtile/autostart.sh
chmod +x ~/.config/qtile/autostart.sh
cp ~/Github/arch/.images/* ~/Images

# compiling the qtile config
python -m py_compile ~/.config/qtile/config.py

# setting up the wallpaper
nitrogen ~/Images/ --random --set-scaled --save
nitrogen --restore

# creating xorg.conf
sudo nvidia-xconfig
