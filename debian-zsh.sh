#!/usr/bin/zsh
chsh -s /usr/bin/zsh
yes | sudo apt update
yes | sudo apt upgrade

mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
cd ~/dotfiles
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
exit
