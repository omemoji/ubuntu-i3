export LANG=C
# ----------
#    補完
# ----------

# ----------
#    履歴
# ----------
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=10000
PROMPT='%m:%F{green}%d%f$ '
##  直前の重複を記録しない
setopt hist_ignore_dups