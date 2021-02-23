# shellcheck shell=bash

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

function show_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

PS1='\[\e[0m\][\[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\H\[\e[0m\]]\[\e[0;32m\][\[\e[0;32m\]\A\[\e[0;32m\]]\[\e[0;95m\][\[\e[0;95m\]\W\[\e[0;95m\]]\[\e[0;93m\]$(show_git_branch)\[\e[0m\] \[\e0'
