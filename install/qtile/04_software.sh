#!/bin/sh

# ---------- Software Installation ----------

# Steam, Gamemode, Mangohud
sudo pacman -S --needed steam
sudo pacman -S --noconfirm --needed gamemode mangohud

# Discord
sudo pacman -S --noconfirm --needed discord

# Gimp
sudo pacman -S --noconfirm --needed gimp

# KeepassXC
sudo pacman -S --noconfirm --needed keepassxc
rsync -r ~/Github/arch/home/config/keepassxc/ ~/.config/keepassxc

# Musikcube
sudo pacman -S --noconfirm --needed musikcube

# Thunderbird
sudo pacman -S --noconfirm --needed thunderbird

# Teamspeak
yay -S --noconfirm --needed teamspeak

# MullvadVPN
yay -S mullvad-vpn

# ---------- Archiv ----------

# ProtonVPN / OpenVPN
# sudo pacman -S --noconfirm wget openvpn openresolv
# sudo wget "https://raw.githubusercontent.com/ProtonVPN/scripts/master/update-resolv-conf.sh" -O "/etc/openvpn/update-resolv-conf"
# sudo chmod +x "/etc/openvpn/update-resolv-conf"

# QTPass + Kleopatra
# sudo pacman -S --noconfirm qtpass 
# sudo pacman -S --noconfirm kleopatra
