alias ll="ls -lrth"
alias vi="vim"
alias listening='sudo lsof -i -P | grep -i "listen"'
function check() {
  ps ax | grep $1 | grep -v "grep\|check"
}

export PATH=/usr/local/bin:$PATH

alias g="git"
alias gs="git status"

alias bmt="cd ~/bmt; workon bmt"
alias mysql="/usr/local/Cellar/mysql/5.6.13/bin/mysqld;"

source ~/.git-completion.bash 
source /usr/local/bin/virtualenvwrapper.sh

source /Users/Evan/.rvm/scripts/rvm

function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 
export PS1="\h:\W\$(parse_git_branch) \u$ "
