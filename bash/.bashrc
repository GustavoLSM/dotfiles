# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Case-insensitive TAB completion
bind 'set completion-ignore-case on'

# Custom shell prompt
PS1='(\u@\H)-[\[\e[38;5;31m\]\W\[\e[0m\]] \$ '

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'

# Enable starship
eval "$(starship init bash)"
