export XDG_HOME_DIR=$HOME/.config
export XDG_SESSION_TYPE=wayland

# set XDG_RUNTIME_DIR, from alpine wiki entry for sway
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTMIE_DIR}"
	fi
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec hikari
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
  exec river
fi

# aliases
alias charge=$HOME/battery_charge.sh
alias soundup='amixer sset Master unmute && amixer sset Speaker unmute && amixer sset Headphone unmute'
alias soundcheck='amixer set Master 30% && speaker-test -c 2'
alias ls='ls --color=auto'

# functions
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# fkill - kill processes - list only the ones you can kill.
fkill() {
    local pid 
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi  

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi  
}

# prompt
yellow=$(tput setaf 3)
bold=$(tput bold)
reset=$(tput sgr0)
# uncomment to get prompt on a single line
# export PS1='\[$bold$yellow\]\w 火:\[$reset\]'

# prompt on two lines: pwd on first, and the prompt on second
export PS1='\n\[$bold$yellow\]\w\n\[$bold$yellow\]火:\[$reset\]'

# export PF_INFO="ascii title os host kernel shell uptime pkgs memory"
# export PF_COLOR=1
# pfetch
#nerdfetch
afetch
