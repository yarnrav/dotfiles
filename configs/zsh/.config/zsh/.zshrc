#!/bin/zsh

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

LS_COLORS='no=00;37:fi=00;94:di=00;33:ln=00;36:pi=40;33:so=01;35:bd=40;33;01:'
export LS_COLORS


HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
# Basic auto/tab complete:
autoload -U compinit bashcompinit
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
bashcompinit

export PS1="# "
bindkey -s '^f' 'clear\n'
source $ZDOTDIR/aliases
source ~/.zprofile
if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0282c34" #black
    echo -en "\e]P8e06c75" #darkgrey
    echo -en "\e]P1353b45" #darkred
    echo -en "\e]P9d19a66" #red
    echo -en "\e]P23e4451" #darkgreen
    echo -en "\e]PAe5c07b" #green
    echo -en "\e]P3545862" #brown
    echo -en "\e]PB98c379" #yellow
    echo -en "\e]P4565c64" #darkblue
    echo -en "\e]PC56b6c2" #blue
    echo -en "\e]P5abb2bf" #darkmagenta
    echo -en "\e]PD61afef" #magenta
    echo -en "\e]P6b6bdca" #darkcyan
    echo -en "\e]PEc678dd" #cyan
    echo -en "\e]P7c8ccd4" #lightgrey
    echo -en "\e]PFbe5046" #white
    clear #for background artifacting
fi
