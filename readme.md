# install.sh

Installs the following programs and copies their configuration files:

| Type | Installation | Config |
| --- | --- | --- |
| SYS \\\ Audio | [pacman] pipewire-pulse | - |
| SYS \\\ AudioUtilities | [pacman] alsa-utils | - |
| SYS \\\ AUR Helper | https://github.com/Jguer/yay | - |
| SYS \\\ Compositor | [pacman] picom | ~/.config/picom/picom.conf |
| SYS \\\ DisplayServer | [pacman] xorg | /etc/X11/xorg.conf |
| SYS \\\ Driver | [pacman] nvidia | /etc/X11/xorg.conf |
| SYS \\\ Editor  | [pacman] nano | ~/.nanorc |
| SYS \\\ Font | [pacman] nerd-fonts | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Neofetch | [pacman] neofetch | ~/.config/neofetch/config.conf |
| SYS \\\ Python | [pacman] python | - |
| SYS \\\ Python | [pacman] python-psutil | - |
| SYS \\\ Shell | [pacman] starship | ~/.config/starship.toml |
| SYS \\\ Terminal | [pacman] kitty | ~/.config/kitty/kitty.conf |
| SYS \\\ Theme | [yay] catppuccin-gtk-theme-macchiato | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Theme - Cursor | [yay] qogir-cursor-theme-git | ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Theme - Icons | [pacman] papirus-icon-theme| ~/gtkrc-2.0 & ~/.config/gtk-3.0/settings.ini |
| SYS \\\ Wallpaper | [pacman] nitrogen | ~/.config/nitrogen/config.conf |
| SYS \\\ WindowManager | [pacman] qtile | ~/.config/qtile/config.py |
| SYS \\\ WindowSwitcher | [pacman] rofi | - |
| SW \\\ FileArchiver | [pacman] p7zip | - |
| SW \\\ FileManager | [pacman] thunar | - |
| SW \\\ FileManager | [pacman] ranger | - |
| SW \\\ Discord | [pacman] discord | - |
| SW \\\ ColorPicker | [pacman] gpick | - |
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
maim (Alias) <br>
 -> maim -o -u output.jpeg

# NVIDIA

Driver: https://www.nvidia.com/Download/index.aspx?lang=en-us <br>
GUI: nvidia-settings

# Screenshots

![arch](https://github.com/Rudi9x/arch/assets/134175623/e223b10c-861b-4245-92be-5a7c79144aa2) <br>

![arch2](https://github.com/Rudi9x/arch/assets/134175623/451bf575-6315-4758-b919-bb2effd1a3a9)



-
