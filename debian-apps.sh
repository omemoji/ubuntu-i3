#!/usr/bin/zsh
chsh -s /usr/bin/zsh
yes | sudo apt update
yes | sudo apt upgrade

mkdir ~/github
mkdir ~/Pictures
mkdir ~/Pictures/wallpaper 
mkdir ~/Pictures/screenshot
wget https://www.omemoji.dev/assets/wallpaper/wallpaper01.png -O /home/omemoji/Pictures/wallpaper/wallpaper01.png
mkdir ~/Downloads
mkdir ~/Downloads/deb
mkdir ~/Downloads/iso
mkdir ~/Documents
mkdir ~/googledrive
mkdir ~/programming
mkdir ~/Pictures/screenshot
sudo cp keyboard /etc/default/keyboard
sudo systemctl restart console-setup
sudo cp sources.list /etc/apt/sources.list
#apps
yes | sudo apt update
yes | sudo apt install firefox-esr webext-https-everywhere webext-ublock-origin-firefox \
htop rclone tlp w3m w3m-img compton neofetch aria2 manpages-ja-dev httrack ffmpeg arandr \
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

#teams
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.4855_amd64.deb -O ~/Downloads/deb/teams.deb
yes | sudo apt update
yes | sudo apt install ~/Downloads/deb/teams.deb

#inkscape 
yes | sudo apt update
yes | sudo apt -t bullseye-backports install inkscape 

#yt-dlp
sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

yes | sudo apt update 
yes | sudo apt upgrade

/usr/bin/zsh