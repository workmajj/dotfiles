export HISTCONTROL=ignoredups
export LC_CTYPE=en_US.UTF-8
export PATH=/usr/local/git/bin:$PATH # custom git
export PS1='\[\033[02;32m\][\u@\h][\T]\[\033[02;34m\][\w]$ \[\033[00m\]'

alias ..='cd ..'
alias gh='cd ~/Documents/code/git/github'
alias git='hub'
alias grep='grep --color=auto'
alias ll='ls -AFGhl'
alias rc='cd ~/Documents/code/git/rc'
alias serve='python -m SimpleHTTPServer 8000'

# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

if hash atom 2>&-; then
    export EDITOR=atom
else
    export EDITOR=vim
fi
