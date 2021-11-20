mv ~/.p10k.zsh ~/dotfiles/zsh/p10k.zsh

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
    sudo ln -snfv ~/dotfiles/config/"$i" ~/.config/
done
cd ..
source ~/.zshrc