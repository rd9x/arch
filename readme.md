# install.sh

Installs the following programs and copies their configuration files:

| Type | Name | Installation |
|----------|-----------|---------------------|
| Audio | PulseAudio | pacman -S pulseaudio |
| Compositor | picom | pacman -S picom |
| FileArchiver | 7zip | pacman -S p7zip |
| FileManager | Thunar | pacman -S thunar |
| Font | Nerd-Fonts | pacman -S nerd-fonts |
| Image - Background | nitrogen | pacman -S nitrogen |
| Image - Capture | maim | pacman -S maim |
| Image - Viewer | feh | pacman -S feh |
| Nvidia | Nvidia Settings | pacman -S nvidia-settings |
| Shell | Starship | pacman -S starship |
| Software - PWManager | KeepassXC | pacman -S keepassxc |
| Software - Discord | Discord | pacman -S discord |
| Software - Teamspeak | Teamspeak 5 | yay -S teamspeak |
| Terminal | Alacritty | pacman -S alacritty |
| Theme | Adwaita-dark | pacman -S gnome-themes-extra |
| Video - Player | ffplay | part of ffmpeg |
| Video - Recorder | ffmpeg | pacman -S ffmpeg |
| WindowManager | Qtile | pacman -S qtile |

# Disable Mouse Acceleration 

xinput list <br>
xinput list-props 'id' <br>
xinput set-prop 'id' 'libinput Accel Profile Enabled' 0, 1, 0 

# NVIDIA

Driver: https://www.nvidia.com/Download/index.aspx?lang=en-us <br>
GUI: nvidia-settings

# Screenshots

![arch](https://github.com/Rudi9x/arch/assets/134175623/ae97fcb6-2ce8-4bb4-8325-bd72e1d30210)

![arch2](https://github.com/Rudi9x/arch/assets/134175623/36376a3a-f87b-42a1-8368-95ef7a40a3b6)
