#!/bin/sh

# ---------- Theme ----------

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


# ----- Configuration Files

cp ~/Github/arch/etc/environment /etc/environment
cp ~/Github/arch/home/.gtkrc-2.0 ~/.gtkrc-2.0
cp ~/Github/arch/home/.profile ~/.profile
cp ~/Github/arch/home/config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf
cp ~/Github/arch/home/config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp ~/Github/arch/home/config/qt5ct/colors/catppuccin-macchiato.conf ~/.config/qt5ct/colors/catppuccin-macchiato.conf
cp ~/Github/arch/home/config/qt5ct/qt5ct.conf ~/.config/qt5ct/qt5ct.conf
