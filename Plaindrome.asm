.model small
.stack 100h
.data
    text1 db "car"
    count dw 3
    text2 db 3 dup(?)
    plaindrome db "String is a palindrome$"
    not_palindrome db "String is not a palindrome$"
.code
    mov ax, @data
    mov ds, ax
    xor ax, ax
    mov si, 0
    mov di, 0
    mov cx, count
    add di, count
    dec di
reverse:
    mov al, text1[si]
    mov text2[di], al
    inc si
    dec di
    loop reverse

    mov si, 0
    mov di, 0
    mov cx, count
check_palindrome:
    mov al, text1[si]
    mov bl, text2[di]
    cmp al, bl
    jnz notPalindrome
    inc si
    inc di
    loop check_palindrome

    lea dx, plaindrome
    mov ah, 09h
    int 21h
    jmp end_program

notPalindrome:
    mov ah, 09h
    lea dx, not_palindrome
    int 21h

end_program:
    mov ah, 4ch
    int 21h
end
