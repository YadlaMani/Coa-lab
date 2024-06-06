title : "reverse  a string"
.model small
.stack 100h
.data
    text1 db "abcdef"
    count dw 6 
    text2 db 7 dup(?),'$'
.code  
    mov ax,@data
    mov ds,ax
    mov es,ax
    mov si,0
    mov di,0
    mov cx,count
    add di,count
    dec count
again:mov al,text1[si]
      mov text2[di],al
      inc si
      dec di
      loop again  
      mov dx,offset text2  
      mov ah,09h
      
      int 21h
      
      mov ah,4ch
      int 21h
      end
