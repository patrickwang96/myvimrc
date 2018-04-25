
# added by Anaconda3 4.4.0 installer
export PATH="/Users/patrickwang/anaconda3/bin:$PATH"

# CLI coloring
export CLICOLOR='true'


#hide prompt
#export PS1="\e[32;40m\t local>$(parse_git_branch)\e[0m"


#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
export PS1="\[\033[32m\]local>\[\033[33m\]\[\033[00m\] "

export PYTHONPATH=~/splunk-sdk-python

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -l'
alias vi='vim'
alias remote='ssh splunk'

source activate py27
export LC_ALL=en_US.UTF-8

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

export TOMCAT_HOME="/Users/patrickwang/apache-tomcat-9.0.6"
export CATALINE_HOME="/Users/patrickwang/apache-tomcat-9.0.6"
export PATH="$CATALINE_HOME/bin:$PATH"
alias emacs="/usr/local/Cellar/emacs/25.3/Emacs.app/Contents/MacOS/Emacs -nw"

export TERM=xterm-256color 
