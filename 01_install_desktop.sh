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
sudo pacman -Syu &> ~/install.log
echo '▒▒   Installing linux headers..'
sudo pacman -S --noconfirm --needed base-devel linux-headers paccache rsync &>> ~/install.log
echo '▒▒   Cloning github repos..'
cd ~/Github &>> ~/install.log
git clone https://aur.archlinux.org/yay.git &>> ~/install.log
git clone https://github.com/rd9x/aerial-sddm-theme &>> ~/install.log
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1 &>> ~/install.log
echo '▒▒'


# ~~ install yay

echo '▒▒   Installing yay..'
cd yay &>> ~/install.log
makepkg -si
yay -Y --gendb
clear


# ~~ install multimedia support

echo '▒▒   [Multimedia]'
echo '▒▒   Installing multimedia support..'
sudo pacman -S --noconfirm --needed feh maim ffmpeg p7zip unrar gpick gvfs vlc &>> ~/install.log
echo '▒▒'


# ~~ install shell, editor, neofetch

echo '▒▒   [Shell]'
echo '▒▒   Installing Starship, Neofetch, Ranger, ncdu, nano, tldr, ntfs-3g, figlet..'
sudo pacman -S --noconfirm --needed starship ranger ncdu nano tldr ntfs-3g figlet &>> ~/install.log
yay -S --noconfirm --needed neofetch &>> ~/install.log
echo '▒▒   Copying config files..'
# rsync -r ~/Github/arch/home/config/htop/ ~/.config/htop &>> ~/install.log
rsync -r ~/Github/arch/home/config/neofetch/ ~/.config/neofetch &>> ~/install.log
rsync ~/Github/arch/home/config/starship.toml ~/.config &>> ~/install.log
rsync ~/Github/arch/home/.bashrc ~/ &>> ~/install.log
rsync ~/Github/arch/home/.bash_profile ~/ &>> ~/install.log
rsync ~/Github/arch/home/.nanorc ~/ &>> ~/install.log


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
sudo pacman -S --noconfirm --needed pipewire pipewire-pulse wireplumber alsa-utils pavucontrol &>> ~/install.log
echo '▒▒'


# ~~ install X11

echo '▒▒   [Display Server]'
echo '▒▒   Installing X11..'
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-xinput &>> ~/install.log
echo '▒▒   Installing Wayland support..'
sudo pacman -S --noconfirm --needed xorg-xwayland qt5-wayland qt6-wayland &>> ~/install.log
# rsync ~/Github/arch/home/.xinitrc ~/ &>> ~/install.log
echo '▒▒'


# ~~ install GPU drivers

echo '▒▒   [GPU]'
echo '▒▒   Installing NVIDIA drivers..'
sudo pacman -S --noconfirm --needed nvidia nvidia-settings nvidia-utils lib32-nvidia-utils &>> ~/install.log
sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader &>> ~/install.log
echo '▒▒'


# ~~ install login manager

echo '▒▒   [Login Manager]'
echo '▒▒   Installing SDDM..'
sudo pacman -S --noconfirm --needed sddm phonon-qt6-vlc &>> ~/install.log
sudo pacman -S --noconfirm --needed gst-libav gst-plugins-good qt5-quickcontrols qt5-graphicaleffects qt5-multimedia &>> ~/install.log
sudo rsync -r ~/Github/aerial-sddm-theme/ /usr/share/sddm/themes/rd9x &>> ~/install.log
sudo rsync -r ~/Github/arch/etc/sddm.conf.d/ /etc/sddm.conf.d &>> ~/install.log
sudo systemctl enable sddm.service &>> ~/install.log
echo '▒▒'


# ~~ install window manager; qtile

echo '▒▒   [Window Manager]'
echo '▒▒   Installing Qtile, Picom, Kitty, Dunst and Rofi..'
yay -S --noconfirm --needed --mflags "--nocheck" qtile-git qtile-extras-git &>> ~/install.log
sudo pacman -S --noconfirm --needed picom kitty rofi dunst &>> ~/install.log
rsync -r ~/Github/arch/home/config/kitty/ ~/.config/kitty &>> ~/install.log
rsync -r ~/Github/arch/home/config/picom/ ~/ &>> ~/install.log
rsync -r ~/Github/arch/home/config/qtile/ ~/.config/qtile &>> ~/install.log
rsync -r ~/Github/arch/home/config/rofi/ ~/.config/rofi &>> ~/install.log
chmod +x ~/.config/qtile/autostart.sh &>> ~/install.log
python -m py_compile ~/.config/qtile/config.py &>> ~/install.log
echo '▒▒   Installing Nautilus, Nitrogen, Networkmanager and Dunst..'
sudo pacman -S --noconfirm --needed nautilus sushi seahorse xfce4-settings nitrogen networkmanager dunst xdg-user-dirs-gtk xdg-desktop-portal xdg-desktop-portal-gtk &>> ~/install.log
rsync -r ~/Github/arch/home/Pictures/ ~/Pictures &>> ~/install.log
rsync -r ~/Github/arch/home/config/dunst/ ~/.config/dunst &>> ~/install.log
rsync -r ~/Github/arch/home/config/xfce4/ ~/.config/xfce4 &>> ~/install.log
echo '▒▒'


# ~~ install keyd

echo '▒▒   [Keyboard]'
read -p "▒▒   Install keyd? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
    sudo pacman -S --noconfirm --needed keyd &>> ~/install.log
    sudo rsync -r ~/Github/arch/etc/keyd/ /etc/keyd &>> ~/install.log
    systemctl enable keyd &>> ~/install.log
    systemctl start keyd &>> ~/install.log
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
yay -S --noconfirm --needed qogir-cursor-theme-git &>> ~/install.log
echo '▒▒'


# ~~ install icons

echo '▒▒   [Icons]'
echo '▒▒   Installing Papirus Icons..'
sudo pacman -S --noconfirm --needed papirus-icon-theme &>> ~/install.log
echo '▒▒'


# ~~ install theme

echo '▒▒   [Theme]'
echo '▒▒   Installing White-Sur, Breeze and Adwaita..'
sudo pacman -S --noconfirm --needed breeze breeze-gtk gnome-themes-extra qt5ct qt6-base lxappearance &>> ~/install.log
cd ~/Github/WhiteSur-gtk-theme &>> ~/install.log
./install.sh &>> ~/install.log
./install.sh -N stable &>> ~/install.log
./install.sh -l &>> ~/install.log
./tweaks.sh -f alt &>> ~/install.log
rsync ~/Github/arch/home/.gtkrc-2.0.mine ~/ &>> ~/install.log
rsync ~/Github/arch/home/.gtkrc-2.0 ~/ &>> ~/install.log
rsync -r ~/Github/arch/home/config/fontconfig/ ~/.config/fontconfig &>> ~/install.log
rsync -r ~/Github/arch/home/config/gtk-3.0/ ~/.config/gtk-3.0 &>> ~/install.log
rsync -r ~/Github/arch/home/config/gtk-4.0/ ~/.config/gtk-4.0 &>> ~/install.log
rsync -r ~/Github/arch/home/config/qt5ct/ ~/.config/qt5ct &>> ~/install.log
sudo rsync ~/Github/arch/etc/environment /etc &>> ~/install.log
echo '▒▒'


# ~~ install font

echo '▒▒   [Font]'
echo '▒▒   Installing font..'
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-cjk noto-fonts-emoji &>> ~/install.log
yay -S --noconfirm --needed ttf-comfortaa &>> ~/install.log
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
sudo pacman -S --noconfirm --needed firefox secrets flameshot wine &>> ~/install.log
echo '▒▒'

# ~~ install steam

echo '▒▒   [Steam]'
read -p "▒▒   Install Steam? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing Steam, Gamemode and Mangohud..'
	sudo pacman -S --noconfirm --needed steam gamemode mangohud &>> ~/install.log
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
	sudo pacman -S --noconfirm --needed discord &>> ~/install.log
	sudo pacman -S --noconfirm --needed teamspeak3 &>> ~/install.log
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
	sudo pacman -S --noconfirm --needed thunderbird protonmail-bridge &>> ~/install.log
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


# ~~ install figma

echo '▒▒   [Webdevelopment]'
read -p "▒▒   Install Figma? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed figma-linux &>> ~/install.log
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
	sudo pacman -S --noconfirm --needed code &>> ~/install.log
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
