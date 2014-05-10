alias ll="ls -lrth"
alias vi="vim"
alias listening='sudo lsof -i -P | grep -i "listen"'
alias server="python -m SimpleHTTPServer 8000"

function check() {
  ps ax | grep $1 | grep -v "grep\|check"
}

export PATH=/usr/local/bin:$PATH

alias 186="cd ~/Dropbox/Homework/cs186"
alias 61b="cd ~/Dropbox/Homework/cs61b"
alias 20="cd ~/Dropbox/Homework/ee20"
alias 104="cd ~/Dropbox/Homework/math\ 104"

alias g="git"
alias gs="git status"

alias bmt="cd ~/bmt; workon bmt"
alias mysql_init="/usr/local/Cellar/mysql/5.6.13/bin/mysqld;"
alias mysql="mysql --user=root --password=henrymaltby"

source ~/.git-completion.bash
source /usr/local/bin/virtualenvwrapper.sh

source /Users/Evan/.rvm/scripts/rvm

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\h:\W\$(parse_git_branch) \u$ "
