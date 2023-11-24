# install.sh

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
