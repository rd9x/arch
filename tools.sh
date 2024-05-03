#!/bin/sh

# ---------- System Utilities and Tools ----------

# terminal, shell, editor, neofetch
sudo pacman -S --noconfirm kitty starship nano neofetch

# task manager
sudo pacman -S --noconfirm htop

# python, psutil
sudo pacman -S --noconfirm python python-psutil

# browser
sudo pacman -S --noconfirm firefox

# file manager + 7zip/unrar
sudo pacman -S --noconfirm thunar gvfs xfce4-settings
sudo pacman -S --noconfirm ranger ncdu
sudo pacman -S --noconfirm p7zip unrar

# multimedia (image, screenshot, video) + color picker
sudo pacman -S --noconfirm feh maim ffmpeg gpick

# ----- Configuration Files

cp ~/Github/arch/home/config/htop/htoprc ~/.config/htop/htoprc
cp ~/Github/arch/home/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
cp ~/Github/arch/home/config/neofetch/config.conf ~/.config/neofetch/config.conf
cp ~/Github/arch/home/config/starship.toml ~/.config/starship.toml
cp ~/Github/arch/home/.nanorc ~/.nanorc

