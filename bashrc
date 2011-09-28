# Locale
export LC_CTYPE=en_US.UTF-8

# Aliases
alias ll='ls -AlFG'

# Editors
if hash mate 2>&-; then
    export EDITOR=mate
else
    export EDITOR=vim
fi

# Python
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME="$HOME/.virtualenvs"
    source /usr/local/bin/virtualenvwrapper.sh
fi
