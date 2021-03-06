alias v='vim'
alias setback='hsetroot -full ~/.background'

alias ..='cd ..'
alias ...='..;..'

alias ls='ls --color=auto'
alias ll='ls -las'
alias la='ls -a'
alias sl='ls'
alias song='mpc current'
alias messenger='google-chrome-unstable --app=https://www.messenger.com'

alias dd='dd status=progress'

alias grep='grep -i --color=auto'

alias lid='systemd-inhibit --what=handle-lid-switch:sleep --who=$(id -un) --why="I want" --mode=block cat'

alias connect='sudo ip l set wlp13s0 down; sudo killall dhcpcd; sudo netctl start'

alias pacman='sudo pacman --color=auto'

alias sdiff='svn diff' 
alias du='du -h'
alias dud='du -d0'

#alias  L=' | less'   #Needs ZSH :(
#alias  G=' | grep'   #Needs ZSH :(

eval $(thefuck --alias fuck)

parse_git_branch () {
  git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)# \1#'
}
parse_svn_branch() {
  svn info 2>/dev/null | sed -ne 's#^Revision: ##p' | awk '{print " "$1}'
  #parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk '{print " (svn::"$1")" }'
}
parse_svn_url() {
  svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
  svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}

BLACK="\[\033[0;38m\]"
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
GREEN="\[\033[1;32m\]"

export PS1=" \W$BLUE\$(parse_git_branch)$GREEN\$(parse_svn_branch)$BLACK "
export SVN_EDITOR=vim
export PATH=$PATH":/home/nikola/.scripts"
export EDITOR=vim
