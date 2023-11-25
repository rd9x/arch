#! /bin/sh

nitrogen --restore &
picom -b
xinput --set-prop 9 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 13 'libinput Accel Profile Enabled' 0, 1, 0
firefox
