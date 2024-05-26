title :"count no.of even and odd"
.model small
.stack 100h
.data
    num db 5,4,2,1,54
    count dw 5
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov cx,count
    mov si,0
    mov bx,0;odd count
    mov dx,0;even count
repeat: mov al,num[si]
        ror al,1
        jc odd
        inc dx
        jmp next
odd:inc bx
next:inc si
     dec cx
     jnc repeat
     mov ah,4ch
     int 21h