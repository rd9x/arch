# install.sh

Installs the following programs and copies their configuration files:

| Type | Installation | Config |
| --- | --- | --- |
| SYS \\\ Audio | [pacman] pipewire-pulse | ? |
| SYS \\\ AUR Helper | https://github.com/Jguer/yay | ? |
| SYS \\\ Compositor | [pacman] picom | ~/.config/picom/picom.conf |
| SYS \\\ DisplayServer | [pacman] xorg | /etc/X11/xorg.conf |
| SYS \\\ Driver | [pacman] nvidia | ? |
| SYS \\\ Editor  | [pacman] nano | ? |
| SYS \\\ Font | [pacman] nerd-fonts | ? |
| SYS \\\ Python | [pacman] python | ? |
| SYS \\\ Python | [pacman] python-psutil | ? |
| SYS \\\ Shell | [pacman] starship | ? |
| SYS \\\ Terminal | [pacman] kitty | ~/.config/kitty/kitty.conf |
| SYS \\\ Theme | [yay] catppuccin-gtk-theme-macchiato | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Theme - Cursor | [yay] qogir-cursor-theme-git | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Theme - Icons | [pacman] papirus-icon-theme| ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Wallpaper | [pacman] nitrogen | ~/.config/nitrogen/config.conf |
| SYS \\\ WindowManager | [pacman] pacman | ~/.config/qtile/config.py |
| SYS \\\ WindowSwitcher | [pacman] rofi | ? |
| SW \\\ FileArchiver | [pacman] p7zip | - |
| SW \\\ FileManager | [pacman] thunar | ? |
| SW \\\ FileManager | [pacman] ranger | ? |
| SW \\\ Discord | [pacman] discord | - |
| SW \\\ Image - Capture | [pacman] maim | - |
| SW \\\ Image - Viewer | [pacman] feh | - |
| SW \\\ PWManager | [pacman] keepassxc | - |
| SW \\\ Steam | [pacman] steam | - |
| SW \\\ Teamspeak | [yay] teamspeak | - |
| SW \\\ Video - Player | [pacman] ffmpeg | - |
| SW \\\ Video - Recorder | [pacman] ffmpeg | - |




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
