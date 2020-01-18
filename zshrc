# Created by newuser for 5.4.2
###[ ZSH ]

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# Prompt
autoload -U promptinit
promptinit
setopt PROMPT_SUBST

# Other options
setopt rmstarsilent
setopt interactivecomments

# Keybinding
bindkey -v
autoload -U select-word-style
select-word-style bash

# Auto-completion
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

#locale settings necessary to enable utf encoding
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

###[ Other ]

# Default editor
export EDITOR='vim'

# Aliases
alias grep='/bin/grep --color=auto'
alias ll='ls --color -lh'
alias ls='ls --color=auto'
alias freemem='free -h | awk '/^Mem:/ {print $3 "/" $2}''
alias cpuhogs='ps axch -o cmd,%cpu --sort=-%cpu | head'
alias memhogs='ps axch -o cmd,%mem --sort=-%mem | head'

# Midnight Commander chdir enhancement
if [ -f /usr/lib/mc/mc.sh ]; then
    source /usr/lib/mc/mc.sh
fi

# Syntax highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    ZSH_HIGHLIGHT_STYLES[globbing]='fg=cyan'
    ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=cyan'
    ZSH_HIGHLIGHT_STYLES[comment]='fg=white,bold'
fi

# GBT prompt forwarding
export GBT__HOME='/usr/share/gbt'

if [ -f $GBT__HOME/sources/gbts/cmd/local.sh ]; then
    source $GBT__HOME/sources/gbts/cmd/local.sh
fi
alias ssh=gbt_ssh

# Basic prompt for non-graphical terminals
if [[ "$TERM" != xterm* ]] && [ -f $GBT__HOME/themes/basic.sh ]; then
    source $GBT__HOME/themes/basic.sh
fi

# Load GBT theme
#source $GBT__HOME/themes/square_brackets_multiline.sh
#source ~/gbt_themes/theme1.sh

# My own configuration
export GBT_CAR_DIR_DEPTH="3"
export GBT_CAR_HOSTNAME_HOST_TEXT="MyLaptop"

# GBT prompt
PROMPT='$(gbt $?)'

