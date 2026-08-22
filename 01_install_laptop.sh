#!/bin/bash
clear
# ~~ update system, install linux headers and clone github repos
sudo pacman -Syu &> ~/install.log
clear
echo
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒  ____            _                  ▒▒'
echo '▒▒ / ___| _   _ ___| |_ ___ _ __ ___   ▒▒'
echo '▒▒ \___ \| | | / __| __/ _ \ `_ ` _ \  ▒▒'
echo '▒▒  ___) | |_| \__ \ | | __/ | | | | | ▒▒'
echo '▒▒ |____/ \__, |___/\__\___|_| |_| |_| ▒▒'
echo '▒▒        |___/                        ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'
echo '▒▒   Updating system..'
echo '▒▒   Installing..'
echo '▒▒   base-devel, linux-headers, pacman-contrib, git, rsync, wget, amd-ucode plasma '
sudo pacman -S --noconfirm --needed base-devel linux-headers pacman-contrib git rsync wget amd-ucode plasma sddm-kcm &>> ~/install.log
echo '▒▒'
echo '▒▒   Cloning github repos..'
cd ~/Github &>> ~/install.log
git clone https://aur.archlinux.org/yay.git &>> ~/install.log
git clone https://github.com/rd9x/aerial-sddm-theme &>> ~/install.log
echo '▒▒'


# ~~ install yay

echo '▒▒   Installing yay..'
cd yay &>> ~/install.log
makepkg -si
yay -Y --gendb
clear


# ~~ install multimedia support

echo '▒▒   [Multimedia & Shell]'
echo '▒▒   Installing..'
echo '▒▒   feh, maim, ffmpeg, evince, p7zip, 7zip, unrar, dosfstools, imagemagick, gvfs, vlc, starship'
echo '▒▒   ranger, btop, ncdu, nano, tldr, ntfs-3g, figlet, peek, zenity, yt-dlp, vapoursynth, neofetch'
sudo pacman -S --noconfirm --needed feh maim ffmpeg evince p7zip 7zip unrar dosfstools imagemagick gvfs vlc starship ranger btop ncdu nano tldr &>> ~/install.log
sudo pacman -S --noconfirm --needed ntfs-3g figlet peek zenity btop ncdu nano tldr ntfs-3g figlet peek zenity yt-dlp yt-dlp-ejs vapoursynth &>> ~/install.log
yay -S --noconfirm --needed neofetch
clear
echo '▒▒   Copying config files..'
rsync -r ~/Github/arch/home/config/neofetch/ ~/.config/neofetch &>> ~/install.log
rsync ~/Github/arch/home/config/starship.toml ~/.config &>> ~/install.log
rsync ~/Github/arch/home/.bashrc ~/ &>> ~/install.log
rsync ~/Github/arch/home/.bash_profile ~/ &>> ~/install.log
rsync ~/Github/arch/home/.nanorc ~/ &>> ~/install.log

sudo pacman -S --noconfirm --needed efibootmgr ntfsprogs libfaketime systemd-resolvconf usb_modeswitch wireguard-tools zram-generator



echo '▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒     _             _ _                         _   ____  _           _              ▒▒'
echo '▒▒    / \  _   _  __| (_) ___     __ _ _ __   __| | |  _ \(_)___ _ __ | | __ _ _   _  ▒▒'
echo '▒▒   / _ \| | | |/ _` | |/ _ \   / _` |  _ \ / _` | | | | | / __| `_ \| |/ _` | | | | ▒▒'
echo '▒▒  / ___ \ |_| | (_| | | (_) | | (_| | | | | (_| | | |_| | \__ \ |_) | | (_| | |_| | ▒▒'
echo '▒▒ /_/   \_\__,_|\__,_|_|\___/   \__,_|_| |_|\__,_| |____/|_|___/ .__/|_|\__,_|\__, | ▒▒'
echo '▒▒                                                              |_|            |___/  ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'


# ~~ install audio; pipewire

echo '▒▒   [Audio]'
echo '▒▒   Installing..'
echo '▒▒   pipewire, pipewire-pulse, wireplumber, alsa-utils, pavucontrol, libpulse'
echo '▒▒   gst-plugin-pipewire pipewire-alsa pipewire-jackgvfs-mtp'
sudo pacman -S --noconfirm --needed pipewire pipewire-pulse wireplumber alsa-utils pavucontrol libpulse gst-plugin-pipewire pipewire-alsa pipewire-jack gvfs-mtp &>> ~/install.log
echo '▒▒'


# ~~ install X11

echo '▒▒   [Display Server]'
echo '▒▒   Installing..'
echo '▒▒   xorg, xorg-xinit, xorg-xinput, xorg-xwayland, xterm, qt5-wayland, qt6-wayland'
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-xinput xorg-xwayland xterm qt5-wayland qt6-wayland &>> ~/install.log
# rsync ~/Github/arch/home/.xinitrc ~/ &>> ~/install.log
echo '▒▒'


# ~~ install GPU drivers

echo '▒▒   [GPU]'
echo '▒▒   Installing..'
echo '▒▒   vulkan-icd-loader, lib32-vulkan-icd-loader, mesa-utils, xf86-video-vesa'
sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader mesa-utils xf86-video-vesa &>> ~/install.log
echo '▒▒'


# ~~ install login manager

echo '▒▒   [Login Manager]'
echo '▒▒   Installing..'
echo '▒▒   sddm, phonon-qt6, phonon-qt6-vlc, gst-libav, gst-plugins-good'
echo '▒▒   qt5-quickcontrols, qt5-graphicaleffects, qt5-multimedia'
sudo pacman -S --noconfirm --needed sddm phonon-qt6 phonon-qt6-vlc gst-libav gst-plugins-good &>> ~/install.log
sudo pacman -S --noconfirm --needed qt5-quickcontrols qt5-graphicaleffects qt5-multimedia &>> ~/install.log

sudo rsync -r ~/Github/aerial-sddm-theme/ /usr/share/sddm/themes/rd9x &>> ~/install.log
sudo rsync -r ~/Github/arch/etc/sddm.conf.d/ /etc/sddm.conf.d &>> ~/install.log

sudo systemctl enable sddm.service &>> ~/install.log
echo '▒▒'


# ~~ install window manager; qtile

echo '▒▒   [Window Manager]'
echo '▒▒   Installing..'
echo '▒▒   picom, kitty, rofi, python-psutil, python-pip'
sudo pacman -S --noconfirm --needed picom kitty rofi python-psutil python-pip &>> ~/install.log

rsync -r ~/Github/arch/home/config/kitty/ ~/.config/kitty &>> ~/install.log
rsync -r ~/Github/arch/home/config/picom/ ~/.config/picom &>> ~/install.log
rsync -r ~/Github/arch/home/config/rofi/ ~/.config/rofi &>> ~/install.log

echo '▒▒'
echo '▒▒   Installing..'
echo '▒▒   nautilus, sushi, seahorse, xfce4-settings, networkmanager'
echo '▒▒   xdg-user-dirs-gtk, xdg-desktop-portal, xdg-desktop-portal-gtk'
sudo pacman -S --noconfirm --needed nautilus sushi seahorse xfce4-settings networkmanager xdg-user-dirs-gtk xdg-desktop-portal xdg-desktop-portal-gtk &>> ~/install.log

rsync -r ~/Github/arch/home/Pictures/ ~/Pictures &>> ~/install.log
rsync -r ~/Github/arch/home/config/xfce4/ ~/.config/xfce4 &>> ~/install.log
echo '▒▒'



echo '▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒  _____ _                          ▒▒'
echo '▒▒ |_   _| |__   ___ _ __ ___   ___  ▒▒'
echo '▒▒   | | | `_ \ / _ \ `_ ` _ \ / _ \ ▒▒'
echo '▒▒   | | | | | |  __/ | | | | |  __/ ▒▒'
echo '▒▒   |_| |_| |_|\___|_| |_| |_|\___| ▒▒'
echo '▒▒                                   ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'


# ~~ install cursor

echo '▒▒   [Cursor]'
echo '▒▒   Installing..'
echo '▒▒   qogir-cursor-theme-git'
yay -S --noconfirm --needed qogir-cursor-theme-git &>> ~/install.log
echo '▒▒'


# ~~ install icons

echo '▒▒   [Icons]'
echo '▒▒   Installing..'
echo '▒▒   papirus-icon-theme'
sudo pacman -S --noconfirm --needed papirus-icon-theme &>> ~/install.log
echo '▒▒'


# ~~ install theme

echo '▒▒   [Theme]'
echo '▒▒   Installing..'
echo '▒▒   breeze, breeze-gtk, gnome-themes-extra, qt5ct, qt6-base, lxappearance'
sudo pacman -S --noconfirm --needed breeze breeze-gtk gnome-themes-extra qt5ct qt6-base lxappearance &>> ~/install.log

rsync -r ~/Github/arch/home/config/fontconfig/ ~/.config/fontconfig &>> ~/install.log
echo '▒▒'


# ~~ install font

echo '▒▒   [Font]'
echo '▒▒   Installing..'
echo '▒▒   noto-fonts, noto-fonts-cjk, noto-fonts-emoji, ttf-comfortaa, ttf-sourcecodepro-nerd'
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-sourcecodepro-nerd &>> ~/install.log
yay -S --noconfirm --needed ttf-comfortaa &>> ~/install.log
echo '▒▒'
clear


echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒  ____         __ _                            ▒▒'
echo '▒▒ / ___|  ___  / _| |___      ____ _ _ __ ___   ▒▒'
echo '▒▒ \___ \ / _ \| |_| __\ \ /\ / / _` | `__/ _ \  ▒▒'
echo '▒▒  ___) | (_) |  _| |_ \ V  V / (_| | | |  __/  ▒▒'
echo '▒▒ |____/ \___/|_|  \__| \_/\_/ \__,_|_|  \___|  ▒▒'
echo '▒▒                                               ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'


# ~~ install firefox, secrets, flameshot

echo '▒▒   [Software]'
echo '▒▒   Installing..'
echo '▒▒   firefox, chromium, keepass, flameshot, wine'
sudo pacman -S --noconfirm --needed firefox chromium keepassxc flameshot wine winetricks &>> ~/install.log
echo '▒▒'

# ~~ install thunderbird

echo '▒▒   [E-Mail]'
read -p "▒▒   Install Thunderbird? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed thunderbird &>> ~/install.log
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac

# ~~ install gimp

echo '▒▒   [Photo Editing]'
read -p "▒▒   Install Gimp? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed gimp &>> ~/install.log
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac

