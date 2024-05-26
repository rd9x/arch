#!/bin/sh

# ---------- System Utilities and Tools ----------

# backup
sudo pacman -S --noconfirm --needed timeshift

# browser
sudo pacman -S --noconfirm --needed firefox

# file manager + 7zip/unrar
sudo pacman -S --noconfirm --needed thunar thunar-volman gvfs xfce4-settings
sudo pacman -S --noconfirm --needed ranger ncdu
sudo pacman -S --noconfirm --needed p7zip unrar

# multimedia (image, screenshot, video) + color picker
sudo pacman -S --noconfirm --needed feh maim ffmpeg gpick

# notification daemon
sudo pacman -S --noconfirm --needed dunst

# python, psutil
sudo pacman -S --noconfirm --needed python python-psutil

# terminal, shell, editor, neofetch
sudo pacman -S --noconfirm --needed kitty starship nano neofetch bat tldr

# task manager
sudo pacman -S --noconfirm --needed btop


# ----- Configuration Files

rsync -r ~/Github/arch/home/config/htop/ ~/.config/htop
rsync -r ~/Github/arch/home/config/kitty/ ~/.config/kitty
rsync -r ~/Github/arch/home/config/neofetch/ ~/.config/neofetch
rsync -r ~/Github/arch/home/config/xfce4/ ~/.config/xfce4
rsync -r ~/Github/arch/home/config/dunst/ ~/.config/dunst
rsync ~/Github/arch/home/config/starship.toml ~/.config
rsync ~/Github/arch/home/.nanorc ~/

