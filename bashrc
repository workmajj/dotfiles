# general
export PATH=/usr/local/bin:$PATH # homebrew
export PS1='\[\033[00;33m\][\u@\h][\T]\[\033[00;36m\][\w]$ \[\033[00m\]'
export LC_CTYPE=en_US.UTF-8

# aliases
alias ..='cd ..'
alias c='clear'
alias ll='ls -AFGhl'

# git aliases
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

# python
export PATH=/usr/local/share/python:$PATH # homebrew
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME="$HOME/.virtualenvs"
    source /usr/local/bin/virtualenvwrapper.sh
fi
