# alias python="python3"
alias ll="ls -lrth"
alias vi="vim"
alias listening='sudo lsof -i -P | grep -i "listen"'
function check() {
  ps ax | grep $1 | grep -v "grep\|check"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias g="git"
alias gs="git status"

source ~/.git-completion.bash 
source /usr/local/bin/virtualenvwrapper.sh

source /Users/Evan/.rvm/scripts/rvm
export PATH=/usr/local/bin:$PATH

function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 
export PS1="\h:\W\$(parse_git_branch) \u$ "
