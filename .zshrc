# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
SCRIPT_DIR=$HOME/dotfiles

for file in $SCRIPT_DIR/zsh/*.zsh; do
  source "$file"
done

