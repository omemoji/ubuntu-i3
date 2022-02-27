# function
makeqemu() {
qemu-img create -f qcow2 $1 20G
}