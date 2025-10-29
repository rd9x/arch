#!/bin/bash
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


# ~~ update system, install linux headers and clone github repos

echo '▒▒   Updating system..'
sudo pacman -Syu &> /dev/null
echo '▒▒   Installing linux headers..'
sudo pacman -S --noconfirm --needed base-devel linux-headers paccache &> /dev/null
echo '▒▒   Cloning github repos..'
cd ~/Github &> /dev/null
git clone https://aur.archlinux.org/yay.git &> /dev/null
git clone https://github.com/rd9x/aerial-sddm-theme &> /dev/null
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1 &> /dev/null
echo '▒▒'


# ~~ install yay

echo '▒▒   Installing yay..'
cd yay &> /dev/null
makepkg -si
yay -Y --gendb
clear


# ~~ install multimedia support

echo '▒▒   [Multimedia]'
echo '▒▒   Installing multimedia support..'
sudo pacman -S --noconfirm --needed feh maim ffmpeg p7zip unrar gpick gvfs vlc &> /dev/null
echo '▒▒'


# ~~ install shell, editor, neofetch

echo '▒▒   [Shell]'
echo '▒▒   Installing Starship, Neofetch, Ranger, ncdu, nano, tldr, ntfs-3g, figlet..'
sudo pacman -S --noconfirm --needed starship neofetch ranger ncdu nano tldr ntfs-3g figlet &> /dev/null
echo '▒▒   Copying config files..'
# rsync -r ~/Github/arch/home/config/htop/ ~/.config/htop &> /dev/null
rsync -r ~/Github/arch/home/config/neofetch/ ~/.config/neofetch &> /dev/null
rsync ~/Github/arch/home/config/starship.toml ~/.config &> /dev/null
rsync ~/Github/arch/home/.bashrc ~/ &> /dev/null
rsync ~/Github/arch/home/.bash_profile ~/ &> /dev/null
rsync ~/Github/arch/home/.nanorc ~/ &> /dev/null


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
echo '▒▒   Installing Pipewire and Alsa Utilities..'
sudo pacman -S --noconfirm --needed pipewire pipewire-pulse wireplumber alsa-utils pavucontrol &> /dev/null
echo '▒▒'


# ~~ install X11

echo '▒▒   [Display Server]'
echo '▒▒   Installing X11..'
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-xinput &> /dev/null
echo '▒▒   Installing Wayland support..'
sudo pacman -S --noconfirm --needed xorg-wayland qt5-wayland qt6-wayland &> /dev/null
# rsync ~/Github/arch/home/.xinitrc ~/ &> /dev/null
echo '▒▒'


# ~~ install GPU drivers

echo '▒▒   [GPU]'
echo '▒▒   Installing NVIDIA drivers..'
sudo pacman -S --noconfirm --needed nvidia nvidia-settings nvidia-utils lib32-nvidia-utils &> /dev/null
sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader &> /dev/null
echo '▒▒'


# ~~ install login manager

echo '▒▒   [Login Manager]'
echo '▒▒   Installing SDDM..'
sudo pacman -S --noconfirm sddm phonon-qt5-vlc &> /dev/null
sudo pacman -S --noconfirm gst-libav gst-plugins-good qt5-quickcontrols qt5-graphicaleffects qt5-multimedia &> /dev/null
sudo rsync -r ~/Github/aerial-sddm-theme/ /usr/share/sddm/themes/rd9x &> /dev/null
sudo rsync -r ~/Github/arch/etc/sddm.conf.d/ /etc/sddm.conf.d &> /dev/null
sudo systemctl enable sddm.service &> /dev/null
echo '▒▒'


# ~~ install window manager; qtile

echo '▒▒   [Window Manager]'
echo '▒▒   Installing Qtile, Picom, Kitty, Dunst and Rofi..'
yay -S --noconfirm --needed --mflags "--nocheck" qtile-git qtile-extras-git &> /dev/null
sudo pacman -S --noconfirm --needed picom kitty rofi dunst &> /dev/null
rsync -r ~/Github/arch/home/config/kitty/ ~/.config/kitty &> /dev/null
rsync -r ~/Github/arch/home/config/picom/ ~/ &> /dev/null
rsync -r ~/Github/arch/home/config/qtile/ ~/.config/qtile &> /dev/null
rsync -r ~/Github/arch/home/config/rofi/ ~/.config/rofi &> /dev/null
chmod +x ~/.config/qtile/autostart.sh &> /dev/null
python -m py_compile ~/.config/qtile/config.py &> /dev/null
echo '▒▒   Installing Nautilus, Nitrogen, Networkmanager and Dunst..'
sudo pacman -S --noconfirm --needed nautilus sushi seahorse xfce4-settings nitrogen networkmanager dunst xdg-user-dirs-gtk xdg-desktop-portal xdg-desktop-portal-gtk &> /dev/null
rsync -r ~/Github/arch/home/Pictures/ ~/Pictures &> /dev/null
rsync -r ~/Github/arch/home/config/dunst/ ~/.config/dunst &> /dev/null
rsync -r ~/Github/arch/home/config/xfce4/ ~/.config/xfce4 &> /dev/null
echo '▒▒'


# ~~ install keyd

echo '▒▒   [Keyboard]'
read -p "▒▒   Install keyd? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
    sudo pacman -S --noconfirm --needed keyd &> /dev/null
    sudo rsync -r ~/Github/arch/etc/keyd/ /etc/keyd &> /dev/null
    systemctl enable keyd &> /dev/null
    systemctl start keyd &> /dev/null
    ;;
    * )
	echo '▒▒   skipped'
    ;;
esac


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
echo '▒▒   Installing Qogir Cursor..'
yay -S --noconfirm --needed qogir-cursor-theme-git &> /dev/null
echo '▒▒'


# ~~ install icons

echo '▒▒   [Icons]'
echo '▒▒   Installing Papirus Icons..'
sudo pacman -S --noconfirm --needed papirus-icon-theme &> /dev/null
echo '▒▒'


# ~~ install theme

echo '▒▒   [Theme]'
echo '▒▒   Installing White-Sur, Breeze and Adwaita..'
sudo pacman -S --noconfirm --needed breeze breeze-gtk gnome-themes-extra qt5ct qt6-base lxappearance &> /dev/null
cd ~/Github/WhiteSur-gtk-theme &> /dev/null
./install.sh &> /dev/null
./install.sh -N stable &> /dev/null
./install.sh -l &> /dev/null
./tweaks.sh -f alt &> /dev/null
rsync ~/Github/arch/home/.gtkrc-2.0.mine ~/ &> /dev/null
rsync ~/Github/arch/home/.gtkrc-2.0 ~/ &> /dev/null
rsync -r ~/Github/arch/home/config/fontconfig/ ~/.config/fontconfig &> /dev/null
rsync -r ~/Github/arch/home/config/gtk-3.0/ ~/.config/gtk-3.0 &> /dev/null
rsync -r ~/Github/arch/home/config/gtk-4.0/ ~/.config/gtk-4.0 &> /dev/null
rsync -r ~/Github/arch/home/config/qt5ct/ ~/.config/qt5ct &> /dev/null
sudo rsync ~/Github/arch/etc/environment /etc &> /dev/null
echo '▒▒'


# ~~ install font

echo '▒▒   [Font]'
echo '▒▒   Installing font..'
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-cjk noto-fonts-emoji &> /dev/null
yay -S --noconfirm --needed ttf-comfortaa &> /dev/null
sudo pacman -S nerd-fonts
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
echo '▒▒   Installing Firefox, Flameshot, Wine and Secrets..'
sudo pacman -S --noconfirm --needed firefox secrets flameshot wine &> /dev/null


# ~~ install steam

echo '▒▒   [Steam]'
read -p "▒▒   Install Steam? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing Steam, Gamemode and Mangohud..'
	sudo pacman -S --noconfirm --needed steam gamemode mangohud &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac


# ~~ install discord, teamspeak

echo '▒▒   [Chat]'
read -p "▒▒   Install Discord, Teamspeak? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed discord &> /dev/null
	sudo pacman -S --noconfirm --needed teamspeak3 &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac


# ~~ install thunderbird

echo '▒▒   [E-Mail]'
read -p "▒▒   Install Thunderbird? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed thunderbird protonmail-bridge &> /dev/null
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
	sudo pacman -S --noconfirm --needed gimp &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac


# ~~ install figma

echo '▒▒   [Webdevelopment]'
read -p "▒▒   Install Figma? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed figma-linux &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac


# ~~ install vscode

echo '▒▒   [Webdevelopment]'
read -p "▒▒   Install VS Code? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed code &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac


# ~~ install mullvad vpn

echo '▒▒   [VPN]'
read -p "▒▒   Install Mullvad VPN? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	yay -S --needed mullvad-vpn
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac
