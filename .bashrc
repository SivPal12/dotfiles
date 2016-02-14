## Aliases
alias ls="ls --color=auto"
alias ll="ls -alFh"
alias la="ls -A"
alias l="ls -cf"
alias grep='grep --color=auto'

## Bash autocomplete ignore case
bind 'set completion-ignore-case on'

## History
HISTFILESIZE=4096
HISTSIZE=4096
shopt -s histappend

## Set terminal tab with equivalent to 4 chars
tabs -4
