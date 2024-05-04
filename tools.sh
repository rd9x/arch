#!/bin/sh

# ---------- System Utilities and Tools ----------

# terminal, shell, editor, neofetch
sudo pacman -S --noconfirm --needed kitty starship nano neofetch

# task manager
sudo pacman -S --noconfirm --needed htop

# python, psutil
sudo pacman -S --noconfirm --needed python python-psutil

# browser
sudo pacman -S --noconfirm --needed firefox

# file manager + 7zip/unrar
sudo pacman -S --noconfirm --needed thunar gvfs xfce4-settings
sudo pacman -S --noconfirm --needed ranger ncdu
sudo pacman -S --noconfirm --needed p7zip unrar

# multimedia (image, screenshot, video) + color picker
sudo pacman -S --noconfirm --needed feh maim ffmpeg gpick

# backup
sudo pacman -S --noconfirm --needed timeshift

# ----- Configuration Files

rsync -r ~/Github/arch/home/config/htop/ ~/.config/htop
rsync -r ~/Github/arch/home/config/kitty/ ~/.config/kitty
rsync -r ~/Github/arch/home/config/neofetch/ ~/.config/neofetch
rsync ~/Github/arch/home/config/starship.toml ~/.config
rsync ~/Github/arch/home/.nanorc ~/

