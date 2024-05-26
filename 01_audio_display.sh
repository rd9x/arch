#!/bin/sh

# ---------- System Installation ----------

# system update
sudo pacman -Syu

# yay installation
cd ~/Github && git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
yay -Y --gendb

# sddm theme
cd ~/Github && git clone https://github.com/rd9x/aerial-sddm-theme

# ----- Audio and Display

# audio
sudo pacman -S --noconfirm --needed pipewire-pulse alsa-utils pavucontrol

# display server 
sudo pacman -S --noconfirm --needed base-devel xorg xorg-xinit xorg-xinput

# compositor
sudo pacman -S --noconfirm --needed picom 

# login manager
sudo pacman -S --noconfirm --needed sddm

# GPU driver
sudo pacman -S --noconfirm --needed nvidia nvidia-settings nvidia-utils lib32-nvidia-utils
sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader

# window manager + switcher
sudo pacman -S --noconfirm --needed rofi
yay -S --noconfirm --needed qtile-git qtile-extras-git

# wallpaper
sudo pacman -S --noconfirm --needed nitrogen

# rsync
sudo pacman -S --noconfirm --needed rsync

# ----- Configuration

# .files
rsync ~/Github/arch/home/.asoundrc ~/
rsync ~/Github/arch/home/.bashrc ~/
rsync ~/Github/arch/home/.bash_profile ~/
rsync ~/Github/arch/home/.xinitrc ~/

# qtile and picom
rsync -r ~/Github/arch/home/config/picom/ ~/.config/picom
rsync -r ~/Github/arch/home/config/qtile/ ~/.config/qtile
rsync -r ~/Github/arch/home/config/rofi/ ~/.config/rofi
chmod +x ~/.config/qtile/autostart.sh
python -m py_compile ~/.config/qtile/config.py

# setting up the wallpaper
rsync -r ~/Github/arch/Pictures/ ~/Pictures
nitrogen ~/Pictures/ --random --set-scaled --save
nitrogen --restore

# sddm theme and enabling service
sudo rsync -r ~/Github/aerial-sddm-theme/ /usr/share/sddm/themes/rd9x
sudo rsync -r ~/Github/arch/etc/sddm.conf.d/ /etc/sddm.conf.d
sudo systemctl enable sddm.service

# creating xorg.conf and start X11
sudo nvidia-xconfig
# startx
