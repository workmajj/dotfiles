# locale
export LC_CTYPE=en_US.UTF-8

# basic aliases
alias ..='cd ..'
alias c='clear'
alias ll='ls -AFGhl'

# git aliases
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gs='git status'

# editors
if hash mate 2>&-; then
    export EDITOR=mate
else
    export EDITOR=vim
fi

# python
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME="$HOME/.virtualenvs"
    source /usr/local/bin/virtualenvwrapper.sh
fi
