# install.sh

Installs the following programs and copies their configuration files:

| Type | Name | Installation | Config |
|----------|-----------|---------------------|
| System \\ Audio | PipeWire Pulse | pacman -S pipewire-pulse | ? |
| System \\ AUR Helper | yay | https://github.com/Jguer/yay | ? |
| System \\ Compositor | Picom | pacman -S picom | ~/.config/picom/picom.conf |
| System \\ DisplayServer | X11 | pacman -S xorg | /etc/X11/xorg.conf |
| System \\ Driver | NVIDIA | pacman -S nvidia | ? |
| System \\ Editor  | Nano | pacman -S nano | ? |
| System \\ FileManager (Terminal)  | Ranger | pacman -S ranger | ? |
| System \\ Font | Nerd Font Roboto Mono | pacman -S nerd-fonts | ? |
| System \\ Python | Python3 | pacman -S python | ? |
| System \\ Python | psutil | pacman -S python-psutil | ? |
| System \\ Shell | Starship | pacman -S starship | ? |
| System \\ Terminal | Kitty | pacman -S kitty | ~/.config/kitty/kitty.conf |
| System \\ Theme | Catppuccin Macchiato | yay -S catppuccin-gtk-theme-macchiato | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| System \\ Theme - Cursor | Qogir | yay -S qogir-cursor-theme-git | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| System \\ Theme - Icons | Rofi | pacman -S papirus-icon-theme| ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| System \\ Wallpaper | Nitrogen | pacman -S nitrogen | ~/.config/nitrogen/config.conf |
| System \\ WindowManager | Qtile | pacman -S pacman | ~/.config/qtile/config.py |
| System \\ WindowSwitcher | Rofi | pacman -S rofi | ? |
| Software \\ FileArchiver | 7zip | pacman -S p7zip | - |
| Software \\ FileManager  | Thunar | pacman -S thunar | ? |
| Software \\ Discord | Discord | pacman -S discord | - |
| Software \\ Image - Capture | maim | pacman -S maim | - |
| Software \\ Image - Viewer | feh | pacman -S feh | - |
| Software \\ PasswordManager | KeepassXC | pacman -S keepassxc | - |
| Software \\ Steam | Steam | pacman -S steam | - |
| Software \\ Teamspeak | Teamspeak 5 | yay -S teamspeak | - |
| Software \\ Video - Player | ffplay | pacman -S ffmpeg | - |
| Software \\ Video - Recorder | ffmpeg | pacman -S ffmpeg | - |




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
