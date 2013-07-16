# alias python="python3"
alias ll="ls -lrth"
alias ss="cd ~/saveup"
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

# MacPorts Installer addition on 2012-10-05_at_19:12:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

source /Users/Evan/.rvm/scripts/rvm
export PATH=/usr/local/bin:$PATH
export PGDATA=/usr/local/var/postgres
