#! /bin/sh

nitrogen --restore &
picom -b
xinput --set-prop 9 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 10 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 13 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 16 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 17 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 20 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 21 'libinput Accel Profile Enabled' 0, 1, 0
xinput --set-prop 22 'libinput Accel Profile Enabled' 0, 1, 0

# set compose key
setxkbmap -option compose:ralt
