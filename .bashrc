##############
# Bash
##############
alias game-over=exit
alias snakkes=exit
alias ls="ls --color=auto"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -cf"

alias grep='grep --color=auto'

bind 'set completion-ignore-case on'

# Maven
alias mvnci="mvn clean install"
alias int="mvnci -Pintegrationtest"
alias mvnnotests="mvn clean install -DskipTests"

## History
HISTCONTROL=ignoreboth:erasedups
HISTFILESIZE=4096
HISTSIZE=4096
shopt -s histappend
