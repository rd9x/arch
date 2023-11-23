#
# ~/.bashrc
#

## Run on start
neofetch

## Aliases
alias ls='ls --color=auto'       # default autocoloring
alias lsa='ls -A'                # show hidden dotfiles
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias pac='sudo pacman'

## Use the up and down arrow keys for finding a command in history
## You can write some initial letters of the command first
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
