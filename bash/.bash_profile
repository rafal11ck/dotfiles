#
# ~/.bash_profile
#

export HISTSIZE=500000
export HISTFILESIZE=-1


[[ -f ~/.bashrc ]] && . ~/.bashrc


[[ ! $SSH_TTY ]] && [[ -f ~/startw ]] && . ~/startw
