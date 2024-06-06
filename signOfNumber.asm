title : "sign of the number"
.model small
.stack 100h
.data
num db 0h
positive dw "+ve number$"
negative dw "-ve number$"
zero dw "Zero$"
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov al,num
    cmp num,0
    jz zeros
    jp greater
    jl lower
    
greater:mov ah,09h
        lea dx,positive
        int 21h
        jmp end
lower:mov ah,09h
      lea dx,negative
      int 21h
      jmp end
zeros:mov ah,09h
      lea dx,zero
      int 21h
      jmp end
end:mov ah,4ch
    int 21h
    
