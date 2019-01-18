all: hello.bin nasm.bin
%.bin: %.s
	nasm -f bin -o $@ $<
