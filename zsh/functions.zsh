# function
makeqemu() {
qemu-img create -f qcow2 $1 20G
}
startwacom(){
xsetwacom --set $1 MapToOutput "DisplayPort-0"
}
formatiso(){
    sudo mkfs -t $1 -Q -L usbdisk $2
}
bakeiso(){
    sudo dd if=$1 of=$2 bs=1
}
yt-aria(){
    yt-dlp --external-downloader aria2c $1
}