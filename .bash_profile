alias ll="ls -lrth"
alias vi="vim"
alias listening='sudo lsof -i -P | grep -i "listen"'
function check() {
  ps ax | grep $1 | grep -v "grep\|check"
}

export PATH=/usr/local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias g="git"
alias gs="git status"

alias bmt="cd ~/bmt; workon bmt"
alias bmtinit="/usr/local/Cellar/mysql/5.6.13/bin/mysqld; export BMT_ENV=local; export BMT_SECRET_KEY=ilovehenrymaltby; export BMT_MYSQL_NAME=bmt; export BMT_MYSQL_USER=root; export BMT_MYSQL_PASSWORD=henrymaltby; export BMT_MYSQL_HOST="

source ~/.git-completion.bash 
source /usr/local/bin/virtualenvwrapper.sh

source /Users/Evan/.rvm/scripts/rvm

function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 
export PS1="\h:\W\$(parse_git_branch) \u$ "
