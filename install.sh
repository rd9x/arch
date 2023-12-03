#!/bin/sh

# ----- installing the base system

# mirror ranking
sudo pacman -S --noconfirm pacman-contrib
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sudo chmod a+w /etc/pacman.d/mirrorlist
sudo rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
# pacman config
sudo cp ~/Github/arch/etc/pacman.conf /etc/pacman.conf
sudo pacman -Sy
# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --gendb
# display server
sudo pacman -S --noconfirm xorg xorg-xinit xorg-xinput base-devel
# drivers GPU
sudo pacman -S --noconfirm nvidia
# X compositor
sudo pacman -S --noconfirm picom
# window manager
sudo pacman -S --noconfirm qtile
yay -S --noconfirm qtile-extras
# window switcher
sudo pacman -S --noconfirm rofi
# audio
sudo pacman -S --noconfirm pipewire-pulse
sudo pacman -S --noconfirm alsa-utils
# wallpaper
sudo pacman -S --noconfirm nitrogen
# python
sudo pacman -S --noconfirm python
# python - psutil
sudo pacman -S --noconfirm python-psutil
# font
sudo pacman -S nerd-fonts
# theme
yay -S --noconfirm catppuccin-gtk-theme-macchiato
# theme - icons
sudo pacman -S --noconfirm papirus-icon-theme
# theme - cursor
yay -S --noconfirm qogir-cursor-theme-git
# terminal
sudo pacman -S --noconfirm kitty
# shell
sudo pacman -S --noconfirm starship
# neofetch
sudo pacman -S --noconfirm neofetch
# editor
sudo pacman -S --noconfirm nano
# file archiver
sudo pacman -S --noconfirm p7zip
# file manager (terminal)
sudo pacman -S --noconfirm ranger
# file manager
sudo pacman -S --noconfirm thunar
# Image - Capture
sudo pacman -S --noconfirm maim
# Image - Viewer
sudo pacman -S --noconfirm feh
# Video - Player/Recorder
sudo pacman -S --noconfirm ffmpeg

# Software
sudo pacman -S --noconfirm discord
sudo pacman -S --noconfirm keepassxc
sudo pacman -S --noconfirm steam
yay -S --noconfirm teamspeak
sudo pacman -S --noconfirm gpick


# -----  configs and configuration

# creating directories
mkdir -p ~/.config/fontconfig
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/kitty
mkdir -p ~/.config/neofetch
mkdir -p ~/.config/picom
mkdir -p ~/.config/qtile
mkdir -p ~/Images

# copying the configs
cp ~/Github/arch/.bashrc ~/.bashrc 
cp ~/Github/arch/.bash_profile ~/.bash_profile
cp ~/Github/arch/.gtkrc-2.0 ~/.gtkrc-2.0
cp ~/Github/arch/.nanorc ~/.nanorc
cp ~/Github/arch/.xinitrc ~/.xinitrc
cp ~/Github/arch/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf
cp ~/Github/arch/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp ~/Github/arch/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf
cp ~/Github/arch/.config/neofetch/config.conf ~/.config/neofetch/config.conf
cp ~/Github/arch/.config/picom/picom.conf ~/.config/picom/picom.conf
cp ~/Github/arch/.config/starship.toml ~/.config/starship.toml
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
