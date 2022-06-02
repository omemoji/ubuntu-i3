#!/usr/bin/zsh
rm -r ~/.config/alacritty
rm -r ~/.config/wezterm
rm ~/.zshrc
rm ~/.vimrc
#dotfiles
set -u

for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".Xauthority" ] && continue
    [ "$f" = ".gitmodules" ] && continue
    [ "$f" = ".zsh_history" ] && continue
    [ "$f" = ".fehbg" ] && continue
    [ "$f" = ".bashrc" ] && continue
    [ "$f" = ".bash_history" ] && continue
    [ "$f" = ".bashrc" ] && continue
    [ "$f" = ".wget-hsts" ] && continue
    ln -snfv ~/dotfiles/"$f" ~/
done
#config
cd config 
for i in *; do
    ln -snfv ~/dotfiles/mac-config/"$i" ~/.config/
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