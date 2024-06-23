#!/bin/sh

# gnome extensions
gext install 1460 # vitals
gext install 2986 # runcat
gext install 3193 # blur my shell
gext install 3843 # just perfection
gext install 4679 # burn my windows
gext install 5389 # screen rotate

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
