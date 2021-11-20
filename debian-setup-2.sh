#!/bin/bash

cp ~/.zshrc  ~/dotfiles/.zshrc  
mv ~/.p10k.zsh ~/dotfiles/zsh/p10k.zsh

rm -r ~/.config/i3 
rm -r ~/.config/kitty
rm -r ~/.config/neofetch
rm -r ~/.config/ranger
rm -r ~/.config/screengrab
#dotfiles
set -u

for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    ln -snfv ~/dotfiles/"$f" ~/
done
#config
cd config 
for i in *; do
    ln -snfv ~/dotfiles/config/"$i" ~/.config/
done
cd ..
source ~/.zshrc