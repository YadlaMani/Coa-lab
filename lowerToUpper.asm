title : "lower case to upper case"
.model small
.stack 100h
.data
    text db "abcdef"
    count dw 6
.code 
    mov ax,@data
    mov ds,ax
    mov es,ax
    mov si,0
    mov cx,count
again:mov al,text[si]
      sub al,20h
      mov text[si],al
      inc si
      loop again
      mov ah,4ch
      int 21h
      end