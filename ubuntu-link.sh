#!/usr/bin/zsh
rm -r ~/.config/alacritty
rm -r ~/.config/neofetch
rm -r ~/.config/ranger
rm -r ~/.config/wezterm
#ubuntu-config
rm -r ~/.config/i3 
rm -r ~/.config/i3status 
rm -r ~/.config/screengrab

rm ~/.zshrc
rm ~/.zprofile
rm ~/.vimrc
rm ~/.w3m

#dotfiles
set -u

for f in .??*; do
    [ "$f" = ".git" ] && continue
    ln -snfv ~/dotfiles/"$f" ~/
done

#config
cd config
for i in `ls *` 
do
    ln -snfv "$i" ~/.config/
done
cd ..

#ubuntu-config
cd ubuntu-config 
for i in `ls *` 
do
    ln -snfv "$i" ~/.config/
done
cd ..
#vscode 
code
echo "待機中..."
sleep 6;killall code
echo "fs.inotify.max_user_watches=524288" | sudo tee /etc/sysctl.conf
sudo sysctl -p
rm -r ~/.config/Code/User/settings.json
ln -snfv ~/dotfiles/settings.json ~/.config/Code/User/