# locale
export LC_CTYPE=en_US.UTF-8

# aliases
alias c='clear'
alias ll='ls -AFGhl'

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
