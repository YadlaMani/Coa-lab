title : "copy a string"
.model small
.stack 100h
.data
 text1 db "adbcdef"
 count dw 6
 text2 db dup(0)
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov si,offset text1
    mov di,offset text2
    mov cx,count
    cld
    rep movsb
    mov ah,4ch
    int 21h
    end
    