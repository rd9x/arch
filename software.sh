#!/bin/sh

# ---------- Software Installation ----------

# Discord
sudo pacman -S --noconfirm discord

# Gimp
sudo pacman -S --noconfirm gimp

# KeepassXC
sudo pacman -S --noconfirm keepassxc

# Musikcube
sudo pacman -S --noconfirm musikcube

# Steam, Gamemode, Mangohud
sudo pacman -S steam
sudo pacman -S --noconfirm gamemode mangohud

# Thunderbird
sudo pacman -S --noconfirm thunderbird

# Teamspeak
yay -S --noconfirm teamspeak

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
