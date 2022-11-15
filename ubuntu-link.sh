#!/usr/bin/zsh
rm -r ~/.config/i3 
rm -r ~/.config/i3status 
rm -r ~/.config/alacritty
rm -r ~/.config/screengrab
rm ~/.zshrc
rm ~/.vimrc
#dotfiles
set -u

for f in .??*; do
    [ "$f" = ".git" ] && continue
    ln -snfv ~/dotfiles/"$f" ~/
done
#config
cd ubuntu-config 
for i in *; do
    ln -snfv ~/dotfiles/ubuntu-config/"$i" ~/.config/
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