# general
export PATH=/usr/local/git/bin:$PATH # custom git
export PS1='\[\033[02;32m\][\u@\h][\T]\[\033[02;34m\][\w]$ \[\033[00m\]'
export LC_CTYPE=en_US.UTF-8

# aliases
alias ..='cd ..'
alias ll='ls -AFGhl'

# git (https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

# editor
if hash mate 2>&-; then
    export EDITOR=mate
else
    export EDITOR=vim
fi
