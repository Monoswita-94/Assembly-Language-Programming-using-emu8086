.model small
.stack 100h
.code
main proc
    mov cx,5 ;row
    mov bx,5 ;col
    
    l1:
      push cx
      mov cx,5  ;col
      
     L2:
     mov ah,2
     mov dl,'1'    
     int 21h
    
    
    
    Loop L2
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    pop cx
    
    
    Loop L1
    
    exit:
     mov ah,4ch 
     int 21h
     main endp
end main
                 
      