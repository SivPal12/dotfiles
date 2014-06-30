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

##############
# Git
##############
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1

# Change prompt
PS1_OLD=${PS1}
#export PS1='\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]\[\033[1;92m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\! \[$(tput setaf 6)\]\t \[$(tput setaf 3)\]\u \[$(tput setaf 2)\]\w\[\033[0m\]\$(__git_ps1)\n$ \[$(tput sgr0)\]"
#export PS1="\$(__git_ps1)\n$ "


function uptodate {
	git fetch ;
	git branch -v | grep "\[.* [[:digit:]]\]";
}
