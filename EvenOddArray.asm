title : "no.of even odd in array"
.model small
.stack 100h
.data
 arr dw 6,23h,45h,65h,32h,54h,21h
 count dw 6
 odd dw 0
 even dw 0
.code
 mov ax,@data
 mov ds,ax
 xor bx,bx
 mov si,2
 mov cx,count
again:mov ax,arr[si];
      test ax,1
      jnz oddCount
      inc bx
      jmp next
oddCount:inc odd   
next:add si,2
loop again
mov ax,count
sub ax,bx
mov even,bx
mov ah,4ch
int 21h
end
