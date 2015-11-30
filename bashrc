# general
export HISTCONTROL=ignoredups
export LC_CTYPE=en_US.UTF-8
export PATH=/usr/local/git/bin:$PATH # custom git
export PS1='\[\033[02;32m\][\u@\h][\T]\[\033[02;34m\][\w]$ \[\033[00m\]'

# aliases
alias ..='cd ..'
alias git='hub'
alias ll='ls -AFGhl'
alias serve='python -m SimpleHTTPServer 8000'

# git tab completion
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# editor
if hash atom 2>&-; then
    export EDITOR=atom
else
    export EDITOR=vim
fi
