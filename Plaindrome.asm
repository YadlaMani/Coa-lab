title:"string manipulation plaindrome"
.model small
.stack 100h
.data
    text1 db "cac"
    count dw 3
    text2 db 3 dup(?)
    plaindrome db "String is a plaindrome$"
    not_plaindrome db "String is not a plaindrome$"
.code
    mov ax,@data
    mov ds,ax
    xor ax,ax
    mov si,0
    mov di,0
    mov cx,count
    add di,count
    dec di
reverse:mov al,text1[si]
        mov text2[di],al
        inc si
        dec di
        loop reverse
        mov si,0
        mov di,0
        mov cx,count
again:mov al,text1[si]
        mov bl,text2[di]
        cmp al,bl
        jnc notPlaindrome
        inc si
        inc di
        loop again
        lea dx,plaindrome
        int 21h
        jmp end
notPlaindrome:mov ah,09h
                lea dx,not_plaindrome
                int 21h
                jmp end
end:mov ah,4ch
    int 21h
end
    