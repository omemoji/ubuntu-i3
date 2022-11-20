# If you don't use qemu, you can delete this line.
makeqemu() {
qemu-img create -f qcow2 $1 "$2"G
}