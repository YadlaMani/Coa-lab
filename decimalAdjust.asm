title : "decimal adjust after addition"
.model small
.stack 100h
.data
    num1 dw 59h
    num2 dw 35h
    dadj dw dup(0)
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov ax,num1
    add ax,num2
    daa
    mov dadj,ax
    mov ah,4ch
    int 21h
    end