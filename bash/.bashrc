#
# ~/.bashrc
#

export PATH="$PATH:~/.config/emacs/bin/"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias zathura='setsid zathura'

PS1='[\u@\h \W]\$ '
