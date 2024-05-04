#!/bin/sh

# ---------- Theme ----------

# cursor 
yay -S --noconfirm --needed qogir-cursor-theme-git

# font + emojis
sudo pacman -S --needed nerd-fonts
sudo pacman -S --noconfirm --needed noto-fonts-emoji

# icons
sudo pacman -S --noconfirm --needed papirus-icon-theme

# system theme
yay -S --noconfirm --needed catppuccin-gtk-theme-macchiato
sudo pacman -S --noconfirm --needed breeze breeze-gtk


# ----- Configuration Files

rsync ~/Github/arch/home/.gtkrc-2.0 ~/
rsync ~/Github/arch/home/.profile ~/
rsync -r ~/Github/arch/home/config/fontconfig/ ~/.config/fontconfig
rsync -r ~/Github/arch/home/config/gtk-3.0/ ~/.config/gtk-3.0
rsync -r ~/Github/arch/home/config/qt5ct/ ~/.config/qt5ct
sudo rsync ~/Github/arch/etc/environment /etc
