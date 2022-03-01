yes | sudo dnf check-update
yes | sudo dnf upgrade

yes | sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 

#essential
yes | sudo dnf groupinstall "Development Tools" alacritty
yes | sudo dnf install zsh python3-pip curl wget git nano vim python3 cmake \
fcitx fcitx-kkc fcitx-configtool \
ristretto feh picom vlc \
blueman 

#apps 
yes | sudo apt install htop rclone tlp w3m compton picom neofetch yt-dlp aria2 man httrack ffmpeg arandr \
torbrowser-launcher proxychains-ng tor filezilla \
inkscape krita gimp blender

#google-chrome 
yes | sudo dnf install fedora-workstation-repositories
yes | sudo dnf config-manager --set-enabled google-chrome
yes | sudo dnf install google-chrome-stable


#vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
yes | dnf check-update
yes | sudo dnf install code

#teams 
sudo sh -c 'echo -e "[teams]\nname=teams\nbaseurl=https://packages.microsoft.com/yumrepos/ms-teams\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/teams.repo'
udo rpm --import https://packages.microsoft.com/keys/microsoft.asc
yes | sudo dnf check-update
yes | sudo dnf install teams