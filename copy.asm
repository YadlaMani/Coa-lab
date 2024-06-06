title : "Copy a string"
.model small
.stack 100h
.data
 text1 db "abcdef"
 count dw 6
 text2 db 6 dup(0)
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
   
    mov si,0
    mov cx,count
again:mov al,text1[si];
      mov text2[si],al
      inc si
      loop again
      mov ah,4ch
      int 21h
      end
