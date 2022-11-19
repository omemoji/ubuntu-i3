#!/usr/bin/zsh
rm -r ~/.config/alacritty
rm -r ~/.config/fontconfig
rm -r ~/.config/neofetch
rm -r ~/.config/ranger
rm -r ~/.config/wezterm
rm -r ~/.config/nvim
#ubuntu-config
rm -r ~/.config/i3 
rm -r ~/.config/i3status 
rm -r ~/.config/screengrab

rm ~/.zshrc
rm ~/.zprofile
rm ~/.vimrc
rm -r ~/.w3m

#dotfiles
set -u
echo "Create dotfile links."
for dotfile in .??*; do
    [ "$dotfile" = ".git" ] && continue
    ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

#config
cd config
for conf in ??*; do
    ln -snfv "$(pwd)/$conf" "$HOME/.config/$conf"
done
cd ..

#ubuntu-config
cd ubuntu-config 
for conf in ??*; do
    ln -snfv "$(pwd)/$conf" "$HOME/.config/$conf"
done