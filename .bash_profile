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
function g() {
  if [ $# -gt 0 ]; then
    git "$@"
  else
    git status
  fi
}
# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

source ~/.git-completion.bash 
source /usr/local/bin/virtualenvwrapper.sh
##
# Your previous /Users/Evan/.bash_profile file was backed up as /Users/Evan/.bash_profile.macports-saved_2012-10-05_at_19:12:13
##

# MacPorts Installer addition on 2012-10-05_at_19:12:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

source /Users/Evan/.rvm/scripts/rvm
export PATH=/usr/local/bin:$PATH
export PGDATA=/usr/local/var/postgres
