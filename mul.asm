title:"Multiplication"
.model small
.stack 100h
.data
    num1 dw 3h
    num2 dw 4h
    prd  dw dup(0)
.code 
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov ax,num1
    mov bx,num2
    mul bx
    mov prd,ax
    mov ah,4ch
    int 21h
    end
