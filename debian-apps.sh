#!/usr/bin/zsh
chsh -s /usr/bin/zsh
yes | sudo apt update
yes | sudo apt upgrade

mkdir ~/Downloads
mkdir ~/Downloads/deb
mkdir ~/Downloads/iso
mkdir ~/Documents
mkdir ~/Pictures/screenshot

#apps
yes | sudo apt install firefox-esr webext-https-everywhere webext-ublock-origin-firefox \
htop rclone tlp w3m w3m-img compton neofetch aria2 manpages-ja-dev httrack ffmpeg 
ardour blender gimp gimp-gmic krita arandr \
torbrowser-launcher proxychains tor filezilla \
libarchive-tools xorriso p7zip-full gzip whois \
qemu-system libvirt-clients libvirt-daemon-system timeshift


#VSCode
yes | curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/ms-vscode-keyring.gpg
yes | echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ms-vscode-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
yes | sudo apt update
yes | sudo apt install code

#google-earth
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb -O ~/Downloads/deb/google-earth.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/google-earth.deb

#protonvpn
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb -O ~/Downloads/deb/protonvpn.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/protonvpn.deb
yes | sudo apt update
ys  | sudo apt install protonvpn

#steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb -O ~/Downloads/deb/steam.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/steam.deb

#teams
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.4855_amd64.deb -O ~/Downloads/deb/teams.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/teams.deb

yes | sudo apt update 
yes | sudo apt upgrade

/usr/bin/zsh