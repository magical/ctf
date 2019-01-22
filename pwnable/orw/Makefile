all: shellcode.bin
%.bin: %.s
	nasm -f bin -o $@ $<

a.out: shellcode.s
	nasm -f elf -o test.o shellcode.s
	ld -m elf_i386 test.o
