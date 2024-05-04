#!/bin/sh

# ---------- System Installation ----------

# system update
sudo pacman -Syu

# yay installation
cd ~/Github && git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
yay -Y --gendb


# ----- Audio and Display

# audio
sudo pacman -S --noconfirm pipewire-pulse alsa-utils pavucontrol

# display server 
sudo pacman -S --noconfirm base-devel xorg xorg-xinit xorg-xinput

# GPU driver
sudo pacman -S --noconfirm nvidia-dkms nvidia-settings nvidia-utils lib32-nvidia-utils
sudo pacman -S --noconfirm vulkan-icd-loader lib32-vulkan-icd-loader

# compositor
sudo pacman -S --noconfirm picom 

# window manager + switcher
sudo pacman -S --noconfirm rofi
yay -S --noconfirm qtile-git qtile-extras-git

# wallpaper
sudo pacman -S --noconfirm nitrogen


# ----- Configuration

# .files
cp ~/Github/arch/home/.asoundrc ~/.asoundrc
cp ~/Github/arch/home/.bashrc ~/.bashrc
cp ~/Github/arch/home/.bash_profile ~/.bash_profile
cp ~/Github/arch/home/.xinitrc ~/.xinitrc

# qtile and picom
cp ~/Github/arch/home/config/picom/picom.conf ~/.config/picom/picom.conf
cp ~/Github/arch/home/config/qtile/autostart.sh ~/.config/qtile/autostart.sh
cp ~/Github/arch/home/config/qtile/config.py ~/.config/qtile/config.py
cp ~/Github/arch/home/config/rofi/config.rasi ~/.config/rofi/config.rasi
chmod +x ~/.config/qtile/autostart.sh
python -m py_compile ~/.config/qtile/config.py

# setting up the wallpaper
cp -r ~/Github/arch/Pictures ~/Pictures
nitrogen ~/Pictures/ --random --set-scaled --save
nitrogen --restore

# creating xorg.conf and start X11
sudo nvidia-xconfig
startx
