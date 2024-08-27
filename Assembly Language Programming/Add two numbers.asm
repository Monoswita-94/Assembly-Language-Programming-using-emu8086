.model small 
.stack 100h
.data
a db 10,13, 'Input first digit $'
b db 10,13, 'Input second digit $'
c db 10,13, 'Result $'

.code
main proc
mov ax,@data
mov ds,ax

mov ah,9 ;show 1st msg
lea dx,a
int 21h

mov ah,1  ;1st input value
int 21h
mov bl,al

mov ah,9;show 2nd msg
lea dx,b
int 21h

mov ah,1
int 21h
mov bh,al

mov ah,9   ;show 3rd msg
lea dx,c
int 21h 

add bl,bh ;  bl = bl + bh
sub bl,48 ;bl=bl-48
           

mov ah,2
mov dl,bl
int 21h


exit: 
mov ah,4ch
int 21h
main endp
end main
