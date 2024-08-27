.model small
.stack 100h
.code 

main proc 
    
    
    mov bx,1
    mov cx,5
    
    L1:
    PUSH cx
    
    
    mov cx,bx 
    mov ah,2
    mov dl,'*'
    
   L2:
    INT 21H      
    
    LOOP L2
    mov ah,2
    mov dl,10
    INT 21H
    mov dl,13
    INT 21H
    
    INC bx
    
    POP cx
    
    LOOP L1
    
    
    
    EXIT:
    mov ah,4ch
    INT 21H
    main endp
end main
