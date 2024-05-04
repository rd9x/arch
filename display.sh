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
sudo pacman -S --noconfirm --needed pipewire-pulse alsa-utils pavucontrol

# display server 
sudo pacman -S --noconfirm --needed base-devel xorg xorg-xinit xorg-xinput

# GPU driver
sudo pacman -S --noconfirm --needed nvidia-dkms nvidia-settings nvidia-utils lib32-nvidia-utils
sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader

# compositor
sudo pacman -S --noconfirm --needed picom 

# window manager + switcher
sudo pacman -S --noconfirm --needed rofi
yay -S --noconfirm --needed qtile-git qtile-extras-git

# wallpaper
sudo pacman -S --noconfirm --needed nitrogen

# rsync
sudo pacman -S --noconfirm --needed rsnyc

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

# creating xorg.conf and start X11
sudo nvidia-xconfig
# startx
