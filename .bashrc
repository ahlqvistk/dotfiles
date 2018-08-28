#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\u@\h:\w\$ '

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
  . /usr/share/bash-completion/bash_completion

alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias vi='nvim'
alias vim='nvim'
export EDITOR='nvim'
export VISUAL='nvim'
