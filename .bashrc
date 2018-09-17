#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash-completion
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
  . /usr/share/bash-completion/bash_completion

# Prompt
PS1='\u@\h:\w\$ '

# .cfg
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# ls with colors
alias ls='ls --color=auto'

# Neovim
alias vi='nvim'
alias vim='nvim'
export EDITOR='nvim'
export VISUAL='nvim'

# Torrent
function torrent
{
  qbittorrent-nox --save-path=$PWD $1
}
