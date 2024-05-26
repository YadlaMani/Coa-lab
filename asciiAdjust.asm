title: "assci adjust after additon"
.model small
.stack 100h
.data
    num1 db '3'
    num2 db '9'
    ascadj dw dup(0)
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov al,num1
    add al,num2
    aaa
    mov ascadj,ax
    mov ah,4ch
    int 21h
    end