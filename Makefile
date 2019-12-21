boot:
	nasm -f bin boot.asm -o boot.bin

qemu:
	qemu-system-x86_64 boot.bin
