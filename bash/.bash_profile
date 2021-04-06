# shellcheck shell=bash
# shellcheck source=/dev/null

# ~/.bash_profile
# Bash configuration file

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -f "$HOME/.profile" ]; then
    source "$HOME/.profile"
fi
