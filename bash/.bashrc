#
# ~/.bashrc
#

export PATH="$PATH:~/.local/bin/:~/.config/emacs/bin/:~/scripts/desktop"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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
