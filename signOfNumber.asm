title : "checking the sign"
.model small
.stack 100h
.data
    num db 3h
    positive db "The number is positibe$"
    negative db "The number is negative$"
    zero db "The number is zero$"  
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov al,num
    cmp num,0
    jg greater
    jl lower
    jz zeros
greater:mov ah,09h
       lea dx,positive
       int 21h
       jump end
lower:mov ah,09h
      lea dx,negative
      int 21h
      jump end
zeros:mov ah,09h
      lea dx,zero
      int 21h
      jump end
end:mov ah,4ch
    int 21h
  