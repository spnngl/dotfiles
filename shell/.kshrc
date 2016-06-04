#. /etc/ksh.kshrc

HISTFILE=$HOME/.ksh.hist
HISTSIZE=3000

bind -m '^L'=clear'^J'

export GOPATH="$HOME/src/go"
export PATH=$PATH:/sbin/:/usr/sbin/:$GOPATH/bin/
export EDITOR=/usr/bin/vim
#export PS1="\u@\h:\w\$ "
export LC_CTYPE=fr_FR.UTF-8
export LC_MESSAGES=fr
export TOP='-s 1'
export PAGER=less
export ENV=$HOME/.kshrc

alias ..='cd ..'
alias ...='cd ../..'
alias ls='colorls -G'
alias ll='ls -lh'
alias g='git'

set +o vi
set -o emacs
set -o csh-history
