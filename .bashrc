#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\u@\h:\w\$ '

alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias vi='nvim'
alias vim='nvim'
export EDITOR='nvim'
export VISUAL='nvim'
