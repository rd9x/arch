#!/bin/sh

# +----------+
# |  System  |
# +----------+

# system update
sudo pacman -Syu

# install headers
sudo pacman -S --noconfirm --needed base-devel linux-headers

# yay installation
cd ~/Github && git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si
yay -Y --gendb

# clone sddm theme
cd ~/Github && git clone https://github.com/rd9x/aerial-sddm-theme


# +---------------------+
# |  Audio and Display  |
# +---------------------+

# audio
sudo pacman -S --noconfirm --needed pipewire pipewire-pulse wireplumber alsa-utils pavucontrol

# gpu drivers
sudo pacman -S --noconfirm --needed mesa mesa-utils
sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader

# wayland
sudo pacman -S --noconfirm --needed qt5-wayland qt6-wayland

# X11 fallback
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-xinput
sudo pacman -S --noconfirm --needed xorg-xwayland

# compositor
sudo pacman -S --noconfirm --needed picom

# login manager
sudo pacman -S --noconfirm --needed sddm

# tablet support
sudo pacman -S --noconfirm --needed xf86-input-wacom iio-sensor-proxy

# +--------------------+
# |  Gnome & Software  |
# +--------------------+

# gnome
sudo pacman -S --noconfirm --needed gnome-shell gnome-shell-extensions gnome-control-center gnome-keyring networkmanager xdg-user-dirs-gtk xdg-desktop-portal-gnome
sudo pacman -S --noconfirm --needed nautilus sushi epiphany
sudo pacman -S --noconfirm --needed gnome-console gnome-logs gnome-system-monitor gnome-text-editor
sudo pacman -S --noconfirm --needed gnome-calender gnome-contacts
sudo pacman -S --noconfirm --needed gnome-music loupe

# gnome extensions
yay -S --noconfirm gnome-extensions-cli
gext install 6
gext install 8
gext install 750
gext install 5389

# shell, editor, neofetch
sudo pacman -S --noconfirm --needed starship nano neofetch tldr

# multimedia (image, screenshot, video)
sudo pacman -S --noconfirm --needed feh maim ffmpeg

# backup
sudo pacman -S --noconfirm --needed timeshift

# tools
sudo pacman -S --noconfirm --needed ranger ncdu gvfs gpick p7zip unrar

# optional
# yay -S --noconfirm --needed pamac-aur
# sudo pacman -S --noconfirm --needed gnome-software

# webcam
# sudo pacman -S --noconfirm --needed snapshot

# +-----------------------+
# |  Configuration Files  |
# +-----------------------+

# rsync
sudo pacman -S --noconfirm --needed rsync

# .files
rsync ~/Github/arch/home/.bashrc ~/
rsync ~/Github/arch/home/.bash_profile ~/
rsync ~/Github/arch/home/.xinitrc ~/

# .config files
rsync -r ~/Github/arch/home/config/gtk-4.0/ ~/.config/gtk-4.0
rsync -r ~/Github/arch/home/config/htop/ ~/.config/htop
rsync -r ~/Github/arch/home/config/neofetch/ ~/.config/neofetch
rsync -r ~/Github/arch/home/config/picom/ ~/.config/picom
rsync ~/Github/arch/home/config/starship.toml ~/.config
rsync ~/Github/arch/home/.nanorc ~/

# remove start menu entries
rsync -r ~/Github/arch/home/.local/share/applications/ ~/.local/share/applications

# copy images
rsync -r ~/Github/arch/home/Pictures/ ~/Pictures

# sddm theme and enabling service
sudo rsync -r ~/Github/aerial-sddm-theme/ /usr/share/sddm/themes/rd9x
sudo rsync -r ~/Github/arch/etc/sddm.conf.d/ /etc/sddm.conf.f
sudo systemctl enable sddm.service
