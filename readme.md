# install.sh

```
#!/bin/sh
pacman -S qtile alacritty picom nitrogen neofetch gnome-themes-extra nvidia-settings thunar maim feh p7zip nerd-fonts starship
cp .bashrc ~/.bashrc && cp .bash_profile ~/.bash_profile
cp .gtkrc-2.0 ~/.gtkrc-2.0
cp .xinitrc ~/.xinitrc
mkdir -p ~/.config/alacritty && mkdir -p ~/.config/gtk-3.0 && mkdir -p ~/.config/picom && mkdir -p ~/.config/qtile
cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp .config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp .config/picom/picom.conf ~/.config/picom/picom.conf
cp .config/qtile/config.py ~/.config/qtile/config.py && cp .config/qtile/autostart.sh ~/.config/qtile/autostart.sh
chmod +x ~/.config/qtile/autostart.sh
cp .images/* ~/Pictures

python -m py_compile ~/.config/qtile/config.py
```

Installs the following programs and copies their configuration files:

| Type | Name | Installation |
|----------|-----------|---------------------|
| Compositor | picom | pacman -S picom |
| FileArchiver | 7zip | pacman -S p7zip |
| FileManager | Thunar | pacman -S thunar |
| Font | Nerd-Fonts | pacman -S nerd-fonts |
| Image - Background | nitrogen | pacman -S nitrogen |
| Image - Capture | maim | pacman -S maim |
| Image - Viewer | feh | pacman -S feh |
| Nvidia | Nvidia Settings | pacman -S nvidia-settings |
| PasswordManager | KeepassXC | pacman -S keepassxc |
| Shell | Starship | pacman -S starship |
| Terminal | Alacritty | pacman -S alacritty |
| Theme | Adwaita-dark | pacman -S gnome-themes-extra |
| WindowManager | Qtile | pacman -S qtile |

# Disable Mouse Acceleration 

xinput list <br>
xinput list-props 'id' <br>
xinput set-prop 'id' 'libinput Accel Profile Enabled' 0, 1, 0 

# NVIDIA

Driver: https://www.nvidia.com/Download/index.aspx?lang=en-us <br>
GUI: nvidia-settings

# Create Windows USB
https://github.com/WoeUSB/WoeUSB-ng
