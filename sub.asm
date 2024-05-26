title : "subraction"
.model small
.stack 100h
.data
    num1 db 13h
    num2 db 12h
    subt dw dup(0)
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov al,num1
    mov bl,num2
    sub al,bl 
    mov subt,ax
    mov ah,4ch  
    int 21h
    end
    