# Bash
alias game-over=exit
alias snakkes=exit
alias ls="ls --color=auto"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -cf"

alias grep='grep --color=auto'

# Maven
alias mvnci="mvn clean install"
alias int="mvnci -Pintegrationtest"


# Git
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth


# Show clean/dirty state for Git in prompt
export GIT_PS1_SHOWDIRTYSTATE=1

# Change prompt
PS1_OLD=${PS1}
export PS1='\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]
\[\033[1;92m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '
