title: "pack two digits into a byte"
.model small
.stack 100h
.data
    num1 db 09h
    num2 db 07h
    pack db dup(0)
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov al,num1
    mov bl,num2
    rcl al,4
    or al,bl
    mov pack,al
    mov ah,4ch
    int 21h
    end
    