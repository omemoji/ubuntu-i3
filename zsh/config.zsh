#export LANG=ja_JP.UTF-8
#export LANG=en_US.UTF-8
export LANG=C.utf-8

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
PROMPT='%m:%F{green}%d%f$ '

setopt hist_ignore_dups