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
echo '▒▒                                     ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'

# update system, install headers and clone repos
echo '▒▒   Updating system..'
sudo pacman -Syu &> /dev/null
echo '▒▒   Installing linux headers..'
sudo pacman -S --noconfirm --needed base-devel linux-headers &> /dev/null
echo '▒▒   Cloning github repos..'
cd ~/Github &> /dev/null
git clone https://aur.archlinux.org/yay.git &> /dev/null
git clone https://github.com/rd9x/aerial-sddm-theme &> /dev/null
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1 &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install yay
echo '▒▒   Installing yay..'
cd yay &> /dev/null
makepkg -si
yay -Y --gendb
echo '▒▒   done'
echo '▒▒'


echo '▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒  _____           _       ▒▒'
echo '▒▒ |_   _|__   ___ | |___   ▒▒'
echo '▒▒   | |/ _ \ / _ \| / __|  ▒▒'
echo '▒▒   | | (_) | (_) | \__ \  ▒▒'
echo '▒▒   |_|\___/ \___/|_|___/  ▒▒'
echo '▒▒                          ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'

# install backup
echo '▒▒   [Backup]'
echo '▒▒   Installing Timeshift..'
sudo pacman -S --noconfirm --needed timeshift &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install multimedia
echo '▒▒   [Multimedia]'
echo '▒▒   Installing VLC and multimedia support..'
sudo pacman -S --noconfirm --needed feh maim ffmpeg vlc p7zip unrar gvfs gpick &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install keyd
echo '▒▒   [Keyboard]'
echo '▒▒   Installing keyd..'
sudo pacman -S --noconfirm --needed keyd &> /dev/null
sudo rsync -r ~/Github/arch/etc/keyd/ /etc/keyd &> /dev/null
systemctl enable keyd &> /dev/null
systemctl start keyd &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install shell, editor, neofetch
echo '▒▒   [Shell]'
echo '▒▒   Installing Starship and Neofetch..'
sudo pacman -S --noconfirm --needed starship nano neofetch tldr ncdu ntfs-3g figlet &> /dev/null
echo '▒▒   Copying config files..'
rsync -r ~/Github/arch/home/config/htop/ ~/.config/htop &> /dev/null
rsync -r ~/Github/arch/home/config/neofetch/ ~/.config/neofetch &> /dev/null
rsync ~/Github/arch/home/config/starship.toml ~/.config &> /dev/null
rsync ~/Github/arch/home/.bashrc ~/ &> /dev/null
rsync ~/Github/arch/home/.bash_profile ~/ &> /dev/null
rsync ~/Github/arch/home/.nanorc ~/ &> /dev/null
echo '▒▒   done'
echo '▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒     _             _ _                         _   ____  _           _              ▒▒'
echo '▒▒    / \  _   _  __| (_) ___     __ _ _ __   __| | |  _ \(_)___ _ __ | | __ _ _   _  ▒▒'
echo '▒▒   / _ \| | | |/ _` | |/ _ \   / _` |  _ \ / _` | | | | | / __| `_ \| |/ _` | | | | ▒▒'
echo '▒▒  / ___ \ |_| | (_| | | (_) | | (_| | | | | (_| | | |_| | \__ \ |_) | | (_| | |_| | ▒▒'
echo '▒▒ /_/   \_\__,_|\__,_|_|\___/   \__,_|_| |_|\__,_| |____/|_|___/ .__/|_|\__,_|\__, | ▒▒'
echo '▒▒                                                              |_|            |___/  ▒▒'
echo '▒▒                                                                                    ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'

# install pipewire and alsa utilities
echo '▒▒   [Audio]'
echo '▒▒   Installing Pipewire and Alsa Utilities..'
sudo pacman -S --noconfirm --needed pipewire pipewire-pulse wireplumber alsa-utils pavucontrol &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install X11
echo '▒▒   [Display Server]'
echo '▒▒   Installing X11..'
sudo pacman -S --noconfirm --needed xorg xorg-xinit xorg-xinput &> /dev/null
echo '▒▒   Installing Wayland support..'
sudo pacman -S --noconfirm --needed xorg-wayland qt5-wayland qt6-wayland &> /dev/null
echo '▒▒   Copying config files..'
rsync ~/Github/arch/home/.xinitrc ~/ &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install picom
echo '▒▒   [Compositor]'
echo '▒▒   Installing Picom..'
sudo pacman -S --noconfirm --needed picom &> /dev/null
echo '▒▒   Copying config files..'
rsync ~/Github/arch/home/config/picom/ ~/ &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install GPU drivers
echo '▒▒   [GPU]'
read -p "▒▒   Install NVIDIA drivers? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing NVIDIA drivers..'
	sudo pacman -S --noconfirm --needed nvidia nvidia-settings nvidia-utils lib32-nvidia-utils &> /dev/null
	sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   Installing AMD/Intel drivers..'
	sudo pacman -S --noconfirm --needed mesa mesa-utils &> /dev/null
	sudo pacman -S --noconfirm --needed vulkan-icd-loader lib32-vulkan-icd-loader &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
esac

# install login manager
echo '▒▒   [Login Manager]'
read -p "▒▒   Install (S)DDM or (G)DM? " answer
case ${answer:0:1} in
    s|S )
	echo '▒▒   Installing SDDM..'
	sudo pacman -S --noconfirm --needed sddm phonon-qt5-gstreamer &> /dev/null
	sudo pacman -S --noconfirm --needed gst-libav gst-plugins-good qt5-quickcontrols qt5-graphicaleffects qt5-multimedia &> /dev/null
	echo '▒▒   Copying config files..'
 	sudo rsync -r ~/Github/aerial-sddm-theme/ /usr/share/sddm/themes/rd9x &> /dev/null
	sudo rsync -r ~/Github/arch/etc/sddm.conf.d/ /etc/sddm.conf.d &> /dev/null
	echo '▒▒   Enabling services..'
 	sudo systemctl enable sddm.service &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    g|G )
	echo '▒▒   Installing GDM..'
	sudo pacman -S --noconfirm --needed gdm &> /dev/null
	echo '▒▒   Enabling services..'
 	sudo systemctl enable gdm.service &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
esac

# install window manager
echo '▒▒   [Window Manager]'
read -p "▒▒   Install (Q)tile or (G)nome? " answer
case ${answer:0:1} in
    q|Q )
	echo '▒▒   Installing Qtile, Kitty and Rofi..'
	yay -S --noconfirm --needed qtile-git qtile-extras-git &> /dev/null
	sudo pacman -S --noconfirm --needed kitty rofi &> /dev/null
	echo '▒▒   Installing Thunar, Nitrogen and Dunst..'
	sudo pacman -S --noconfirm --needed thunar thunar-volman xfce4-settings nitrogen dunst &> /dev/null
	echo '▒▒   Copying config files..'
	rsync -r ~/Github/arch/home/config/kitty/ ~/.config/kitty &> /dev/null
	rsync -r ~/Github/arch/home/config/qtile/ ~/.config/qtile &> /dev/null
	rsync -r ~/Github/arch/home/config/rofi/ ~/.config/rofi &> /dev/null
	chmod +x ~/.config/qtile/autostart.sh &> /dev/null
	python -m py_compile ~/.config/qtile/config.py &> /dev/null
	rsync -r ~/Github/arch/Pictures/ ~/Pictures &> /dev/null
	rsync -r ~/Github/arch/home/config/dunst/ ~/.config/dunst &> /dev/null
	rsync -r ~/Github/arch/home/config/xfce4/ ~/.config/xfce4 &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    g|G )
	echo '▒▒   Installing Gnome..'
	sudo pacman -S --noconfirm --needed gnome-shell gnome-shell-extensions gnome-menus gnome-control-center gnome-keyring gnome-tweaks &> /dev/null
	sudo pacman -S --noconfirm --needed gnome-console gnome-logs gnome-system-monitor gnome-backgrounds gnome-text-editor &> /dev/null
	sudo pacman -S --noconfirm --needed networkmanager xdg-user-dirs-gtk xdg-desktop-portal-gnome &> /dev/null
	sudo pacman -S --noconfirm --needed gnome-calendar gnome-contacts gnome-music loupe  &> /dev/null
	sudo pacman -S --noconfirm --needed nautilus sushi epiphany secrets seahorse  &> /dev/null
	yay -S --noconfirm --needed gnome-extensions-cli extension-manager &> /dev/null
# 	yay -S --noconfirm --needed pamac-aur &> /dev/null
# 	sudo pacman -S --noconfirm --needed gnome-software flatpak &> /dev/null
# 	sudo pacman -S --noconfirm --needed snapshot &> /dev/null
	echo '▒▒   Gnome Tweaks and copying background images..'
 	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true &> /dev/null
   	gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close" &> /dev/null
    	gsettings set org.gnome.mutter center-new-windows true &> /dev/null
	gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy &> /dev/null
     	gsettings set org.gnome.desktop.wm.preferences auto-raise true &> /dev/null
	gsettings set org.gnome.desktop.interface cursor-theme 'Qogir-dark-cursors' &> /dev/null
        gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark' &> /dev/null
	gsettings set org.gnome.desktop.interface document-font-name 'Comfortaa 11' &> /dev/null
	gsettings set org.gnome.desktop.interface font-name 'Comfortaa 11' &> /dev/null
 	gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat &> /dev/null
	dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ~/Github/arch/dconf/kb_media &> /dev/null
	dconf load /org/gnome/shell/keybindings/ < ~/Github/arch/dconf/kb_shell &> /dev/null
	dconf load /org/gnome/desktop/wm/keybindings/ < ~/Github/arch/dconf/kb_wm &> /dev/null
 	rsync -r ~/Github/arch/home/.local/share/applications/ ~/.local/share/applications &> /dev/null
	rsync -r ~/Github/arch/Pictures/ ~/Pictures &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
esac

# tablet support
echo '▒▒   [Touchscreen]'
read -p "▒▒   Install tablet support? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
 	sudo pacman -S --noconfirm --needed xf86-input-wacom iio-sensor-proxy &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac

echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒  _____ _                          ▒▒'
echo '▒▒ |_   _| |__   ___ _ __ ___   ___  ▒▒'
echo '▒▒   | | | `_ \ / _ \ `_ ` _ \ / _ \ ▒▒'
echo '▒▒   | | | | | |  __/ | | | | |  __/ ▒▒'
echo '▒▒   |_| |_| |_|\___|_| |_| |_|\___| ▒▒'
echo '▒▒                                   ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'

# install cursor
echo '▒▒   [Cursor]'
echo '▒▒   Installing Qogir Cursor..'
yay -S --noconfirm --needed qogir-cursor-theme-git &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install icons
echo '▒▒   [Icons]'
echo '▒▒   Installing Papirus Icons..'
sudo pacman -S --noconfirm --needed papirus-icon-theme &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install theme
echo '▒▒   [Theme]'
echo '▒▒   Installing Whitesur, Breeze and Adwaita..'
sudo pacman -S --noconfirm --needed breeze breeze-gtk gnome-themes-extra qt5ct &> /dev/null
cd ~/Github/WhiteSur-gtk-theme &> /dev/null
./install.sh &> /dev/null
echo '▒▒   Copying config files..'
rsync ~/Github/arch/home/.gtkrc-2.0.mine ~/ &> /dev/null
rsync ~/Github/arch/home/.gtkrc-2.0 ~/ &> /dev/null
rsync -r ~/Github/arch/home/config/fontconfig/ ~/.config/fontconfig &> /dev/null
rsync -r ~/Github/arch/home/config/gtk-3.0/ ~/.config/gtk-3.0 &> /dev/null
rsync -r ~/Github/arch/home/config/gtk-4.0/ ~/.config/gtk-4.0 &> /dev/null
rsync -r ~/Github/arch/home/config/qt5ct/ ~/.config/qt5ct &> /dev/null
sudo rsync ~/Github/arch/etc/environment /etc &> /dev/null
echo '▒▒   done'
echo '▒▒'

# install font
echo '▒▒   [Font]'
echo '▒▒   Installing font..'
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-cjk noto-fonts-emoji &> /dev/null
yay -S --noconfirm --needed ttf-comfortaa &> /dev/null
sudo pacman -S nerd-fonts
echo '▒▒   done'
echo '▒▒'

# gnome theme tweaks againg
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true &> /dev/null
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close" &> /dev/null
gsettings set org.gnome.mutter center-new-windows true &> /dev/null
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy &> /dev/null
gsettings set org.gnome.desktop.wm.preferences auto-raise true &> /dev/null
gsettings set org.gnome.desktop.interface cursor-theme 'Qogir-dark-cursors' &> /dev/null
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark' &> /dev/null
gsettings set org.gnome.desktop.interface document-font-name 'Comfortaa 11' &> /dev/null
gsettings set org.gnome.desktop.interface font-name 'Comfortaa 11' &> /dev/null
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat &> /dev/null

echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒  ____         __ _                            ▒▒'
echo '▒▒ / ___|  ___  / _| |___      ____ _ _ __ ___   ▒▒'
echo '▒▒ \___ \ / _ \| |_| __\ \ /\ / / _` | `__/ _ \  ▒▒'
echo '▒▒  ___) | (_) |  _| |_ \ V  V / (_| | | |  __/  ▒▒'
echo '▒▒ |____/ \___/|_|  \__| \_/\_/ \__,_|_|  \___|  ▒▒'
echo '▒▒                                               ▒▒'
echo '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒'
echo '▒▒'

# install steam, gamemode
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

# install discord, teamspeak
echo '▒▒   [Chat]'
read -p "▒▒   Install Discord, Teamspeak? (y/N) " answer
case ${answer:0:1} in
    y|Y )
	echo '▒▒   Installing..'
	sudo pacman -S --noconfirm --needed discord &> /dev/null
	yay -S --noconfirm --needed teamspeak &> /dev/null
	echo '▒▒   done'
	echo '▒▒'
    ;;
    * )
	echo '▒▒   skipped'
	echo '▒▒'
    ;;
esac

# install thunderbird
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

# install gimp
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

# install mullvad vpn
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
