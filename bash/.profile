# shellcheck shell=bash

# ~/.profile
# bash configuration file

# PATH
if [ -d "$HOME/.local/bin" ]; then
    PATH=$PATH:~/.local/bin
fi

if [ -d "$HOME/.local/scripts" ]; then
    PATH=$PATH:~/.local/scripts
fi

# ssh agent
eval "$(ssh-agent -s)"

# general environment variables
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"
export QT_QPA_PLATFORMTHEME="qt5ct"

# For man pages
export LESS_TERMCAP_md=$'\e[01;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'
