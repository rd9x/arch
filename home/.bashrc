# Run on start
neofetch
eval "$(starship init bash)"

# Aliases
alias ..='cd ..'
alias ls='ls --color=auto'       # default autocoloring
alias lsa='ls -A'                # show hidden dotfiles
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias 2pac='sudo pacman -Syu'
alias pac='sudo pacman'
alias alsa='alsamixer'
alias ffrecord='ffmpeg -s 3440x1440 -r 60 -f x11grab -i :0.0 ~/Videos/output.mp4'
alias lxinput='xinput list'
alias exinput='echo xinput --set-prop 9 libinput Accel Profile Enabled 0, 1, 0'
alias mp3='cd ~/Music/Downloads && yt-dlp -x -f 251 --add-metadata --embed-thumbnail'
alias mp4='cd ~/Videos/Downloads && yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --add-metadata --embed-thumbnail'

# Use the up and down arrow keys for finding a command in history
# You can write some initial letters of the command first
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# set an ad-hoc GUI timer
timer() {
  local N=$1; shift

  (sleep $N && zenity --info --title="Time's Up" --text="${*:-BING}") &
  echo "timer set for $N"
}
export PATH=/home/rd9x/.local/bin:$VCPKG_ROOT:$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
