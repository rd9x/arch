# install.sh

Installs the following programs and copies their configuration files:

| Type | Name | Installation | Config |
| --- | --- | --- | --- |
| SYS \\\ Audio | PipeWire Pulse | pacman -S pipewire-pulse | ? |
| SYS \\\ AUR Helper | yay | https://github.com/Jguer/yay | ? |
| SYS \\\ Compositor | Picom | pacman -S picom | ~/.config/picom/picom.conf |
| SYS \\\ DisplayServer | X11 | pacman -S xorg | /etc/X11/xorg.conf |
| SYS \\\ Driver | NVIDIA | pacman -S nvidia | ? |
| SYS \\\ Editor  | Nano | pacman -S nano | ? |
| SYS \\\ FileManager(Shell) | Ranger | pacman -S ranger | ? |
| SYS \\\ Font | Nerd Font Roboto Mono | pacman -S nerd-fonts | ? |
| SYS \\\ Python | Python3 | pacman -S python | ? |
| SYS \\\ Python | psutil | pacman -S python-psutil | ? |
| SYS \\\ Shell | Starship | pacman -S starship | ? |
| SYS \\\ Terminal | Kitty | pacman -S kitty | ~/.config/kitty/kitty.conf |
| SYS \\\ Theme | Catppuccin Macchiato | yay -S catppuccin-gtk-theme-macchiato | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Theme - Cursor | Qogir | yay -S qogir-cursor-theme-git | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Theme - Icons | Rofi | pacman -S papirus-icon-theme| ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Wallpaper | Nitrogen | pacman -S nitrogen | ~/.config/nitrogen/config.conf |
| SYS \\\ WindowManager | Qtile | pacman -S pacman | ~/.config/qtile/config.py |
| SYS \\\ WindowSwitcher | Rofi | pacman -S rofi | ? |
| SW \\\ FileArchiver | 7zip | pacman -S p7zip | - |
| SW \\\ FileManager  | Thunar | pacman -S thunar | ? |
| SW \\\ Discord | Discord | pacman -S discord | - |
| SW \\\ Image - Capture | maim | pacman -S maim | - |
| SW \\\ Image - Viewer | feh | pacman -S feh | - |
| SW \\\ PasswordManager | KeepassXC | pacman -S keepassxc | - |
| SW \\\ Steam | Steam | pacman -S steam | - |
| SW \\\ Teamspeak | Teamspeak 5 | yay -S teamspeak | - |
| SW \\\ Video - Player | ffplay | pacman -S ffmpeg | - |
| SW \\\ Video - Recorder | ffmpeg | pacman -S ffmpeg | - |




# Disable Mouse Acceleration 

xinput list <br>
xinput list-props 'id' <br>
xinput set-prop 'id' 'libinput Accel Profile Enabled' 0, 1, 0 

# Record Video / Screenshot

ffrecord (Alias) <br>
 -> ffmpeg -s 3440x1440 -r 60 -f x11grab -i :0.0 ~/Videos/output.mp4 <br><br>
maim -o -u output.jpeg

# NVIDIA

Driver: https://www.nvidia.com/Download/index.aspx?lang=en-us <br>
GUI: nvidia-settings

# Screenshots

![arch2](https://github.com/Rudi9x/arch/assets/134175623/36376a3a-f87b-42a1-8368-95ef7a40a3b6) <br>

![arch3](https://github.com/Rudi9x/arch/assets/134175623/f5432fb6-9903-453a-9b20-052660b77df8) <br>

![arch](https://github.com/Rudi9x/arch/assets/134175623/ae97fcb6-2ce8-4bb4-8325-bd72e1d30210) <br>
