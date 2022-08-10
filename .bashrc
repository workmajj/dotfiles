export GOPATH=~/go
export HISTCONTROL=ignoreboth:erasedups
export LC_CTYPE=en_US.UTF-8
export PS1='\[\033[02;33m\][\u@\h]\[\033[02;32m\][\D{%r}]\[\033[02;34m\][\w]$ \[\033[00m\]'

alias ..='cd ..'
alias grep='grep --color=auto'
alias ll='ls -AFGhl'
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

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
