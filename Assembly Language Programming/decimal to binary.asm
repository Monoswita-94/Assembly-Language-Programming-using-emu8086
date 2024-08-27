 ; deci to binary

.model small
.stack 100h
.data
str1 dw "Decimal Input $"
str2 db "Binary Output $"
.code
main proc
    mov ax,@data
    mov ds,ax 
    
    
    mov ah,9
    lea dx,str1   ;string 1 print
    int 21h
    
    
    mov ah,1      ;character input
    int 21h

    sub al,48     ;ascii to decimal
    mov ah,0
             
    mov bx,2      ;divisor
    mov dx,0      ;remainder
    mov cx,0      ;counter
    
    divide:
    div bx
    push dx       ;push remainder
    inc cx        ;counter increment
    cmp ax,0      ;debugging
    
    jne divide        
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,9
    lea dx,str2
    int 21h
    
    
    check:
    pop dx
    add dl,48     ;decimal to ascii 
    mov ah,2
    int 21h 
    loop check 

  
    exit:
    mov ah,4ch
    int 21h
    main endp
end main




