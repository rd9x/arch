#!/bin/sh

# gnome extensions
gext install 1460 # vitals
gext install 2986 # runcat
gext install 3193 # blur my shell
gext install 3843 # just perfection
gext install 4481 # forge
gext install 4679 # burn my windows
gext install 5389 # screen rotate

gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy
gsettings set org.gnome.desktop.wm.preferences auto-raise true
gsettings set org.gnome.desktop.interface cursor-theme 'Qogir-dark-cursors'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface document-font-name 'Comfortaa 11'
gsettings set org.gnome.desktop.interface font-name 'Comfortaa 11'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat

dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ~/Github/arch/dconf/kb_media
dconf load /org/gnome/shell/keybindings/ < ~/Github/arch/dconf/kb_shell
dconf load /org/gnome/desktop/wm/keybindings/ < ~/Github/arch/dconf/kb_wm
