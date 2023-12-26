#
# ~/.bashrc
#

export PATH="$PATH:~/.local/bin/:~/.config/emacs/bin/:~/scripts/desktop"
export EDITOR="nvim"
export VISUAL="emacs"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

#ssh agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias zathura='setsid zathura'

eval "$(starship init bash)"
