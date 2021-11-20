#!/usr/bin/zsh
chsh -s /usr/bin/zsh
yes | sudo apt update
yes | sudo apt upgrade

# install zinit
cp ~/dotfiles/.zshrc  ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

cat <<"EOL" >> ~/.zshrc
SCRIPT_DIR=$HOME/dotfiles

for file in $SCRIPT_DIR/zsh/*.zsh; do
  source "$file"
done
EOL
cp ~/.zshrc ~/tmp.txt

