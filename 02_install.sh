#!/bin/sh

# gnome extensions
gext install 1460 # vitals
gext install 2986 # runcat
gext install 3193 # blur my shell
gext install 3843 # just perfection
gext install 4481 # forge
gext install 4679 # burn my windows
gext install 5389 # screen rotate

dconf load / < ~/Github/arch/dconf/all.conf &> /dev/null
