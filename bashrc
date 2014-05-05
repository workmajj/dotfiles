# general
export PATH=/usr/local/bin:$PATH # homebrew
export PS1='\[\033[02;32m\][\u@\h][\T]\[\033[02;34m\][\w]$ \[\033[00m\]'
export LC_CTYPE=en_US.UTF-8

# basic
alias ..='cd ..'
alias ll='ls -AFGhl'

# git
alias gc='git commit'
alias gd='git diff'
alias gl='git shortlog'
alias gs='git status'

# editor
if hash mate 2>&-; then
    export EDITOR=mate
else
    export EDITOR=vim
fi
