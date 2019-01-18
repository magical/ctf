bits 32

; write(1, PWND, 4)
push 0x444e5750
mov ecx,esp
mov dl,4
mov bl,1
mov al,4
int 0x80
; exit
mov al,1
int 0x80
