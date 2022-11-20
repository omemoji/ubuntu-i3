export LANG=C.UTF-8
PROMPT='%m:%F{green}%d%f$ '
setopt hist_ignore_dups

autoload -U compinit promptinit
compinit
promptinit
zstyle ':completion:*' menu select