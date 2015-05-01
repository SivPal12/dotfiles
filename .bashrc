## Vars
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

## Aliases
alias game-over=exit
alias snakkes=exit
alias ls="ls --color=auto"
alias ll="ls -alFh"
alias la="ls -A"
alias l="ls -cf"
alias grep='grep --color=auto'
alias t="gnome-terminal ." ## New terminal in current dir

## Bash autocomplete ignore case
bind 'set completion-ignore-case on'

## History
HISTCONTROL=ignorespace
HISTFILESIZE=4096
HISTSIZE=4096
shopt -s histappend

## Copy files
cp $DIR/.nanorc ~
