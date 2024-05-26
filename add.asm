.model small
.stack 100h 

.data
    num1 db 17H
    num2 db 0A7H

.code
    mov ax, @data ;this is a comment
    mov ds, ax
    xor ax, ax
    
    mov al, num1
    mov bl, num2
    add al, bl
    mov ah, 4ch
    int 21h
end