alias v='vim'
alias setback='hsetroot -full ~/.background'

alias ls='ls --color=auto'
alias ll='ls -las'
alias la='ls -a'

alias pacman='sudo pacman --color=auto'
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
