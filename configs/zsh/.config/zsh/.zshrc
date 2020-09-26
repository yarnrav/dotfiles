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
