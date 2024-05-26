title : "count no.of 1's"
.model small
.stack 100h  
.data
    num db 0Fh
    count db dup(0)
.code 
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov al,num
    mov cx,08
    mov bl,0
again:rol al,1
      jnc noadd
      inc bl
noadd: loop again
        mov count,bl
        mov ah,4ch
        int 21h
        end
