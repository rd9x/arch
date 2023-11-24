| Type | Name | Installation |
|----------|-----------|---------------------|
| FileManager | Thunar | pacman -S thunar |
| Image - Background | nitrogen | pacman -S nitrogen |
| Image - Capture | maim | pacman -S maim |
| Image - Viewer | feh | pacman -S feh |
| Terminal | Alacritty | pacman -S alacritty |
| Theme | Adwaita-dark | pacman -S gnome-themes-extra |

# Disable Mouse Acceleration 

xinput list <br>
xinput list-props 'id' <br>
xinput set-prop 'id' 'libinput Accel Profile Enabled' 0, 1, 0 

# NVIDIA

Driver: https://www.nvidia.com/Download/index.aspx?lang=en-us <br>
GUI: nvidia-settings
