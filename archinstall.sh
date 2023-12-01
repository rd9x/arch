#!/bin/sh

# install: X11(DisplayServer), lightdm(DisplayManager), NVIDIA drivers, Nano(Editor)
# yes | sudo pacman -S xorg xorg-init nvidia
yes | sudo pacman -S lightdm nano
# service: enabling the lightdm service
sudo systemctl enable lightdm.service
# config: copying the .xinitrc config
cp .xinitrc ~/.xinitrc

# install: Qtile(WindowManager), Picom(Compositor), PipeWire-Pulse(Audio), Nitrogen(Background), Python
yes | sudo pacman -S qtile picom nitrogen python
sudo pacman -S pipewire-pulse 
# Creating directories and copying the Picom, Qtile and GTK configs, autostart script
mkdir -p ~/.config/picom && mkdir -p ~/.config/qtile
#cp .gtkrc-2.0 ~/.gtkrc-2.0
cp .config/picom/picom.conf ~/.config/picom/picom.conf
cp .config/qtile/config.py ~/.config/qtile/config.py
cp .config/qtile/autostart.sh ~/.config/qtile/autostart.sh
chmod +x ~/.config/qtile/autostart.sh
# Compiling the qtile config
python -m py_compile ~/.config/qtile/config.py
# Setting up the wallpaper
cp .images/* ~/Pictures
nitrogen ~/Pictures && nitrogen --restore



