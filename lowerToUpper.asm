title : "lower to upper"
.model small
.stack 100h
.data
    text1 db "abcdef"
    count dw 6
.code
    mov ax,@data
    mov ds,ax
    mov es,ax
    mov cx,count
   
    mov si,0
again:mov al,text1[si]
       sub al,20h
       mov text1[si],al
       inc si
loop again
mov ah,4ch
int 21h
end
