#!/bin/zsh
# EXPORT ENVIRONMENT VARIABLE #

typeset -U path PATH
path=(/opt/nvim-linux64/bin/ /home/robbie/Apps/oss-cad-suite/bin/ /home/robbie/Apps/fzf/bin/ /home/robbie/Apps/py_scripts/ $path)
#path=(/opt/nvim-linux64/bin/ $path)
export PATH

#export TERM='rxvt-256color'


# XDG

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache

# editor

export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="brave"

# zsh

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
