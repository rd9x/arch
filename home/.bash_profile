#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
#  exec startx
#fi

gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.desktop.wm.preferences focus-mode sloppy
gsettings set org.gnome.desktop.wm.preferences auto-raise true
gsettings set org.gnome.desktop.interface cursor-theme 'Qogir-dark-cursors
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface document-font-name 'Comfortaa 11'
gsettings set org.gnome.desktop.interface font-name 'Comfortaa 11'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat
