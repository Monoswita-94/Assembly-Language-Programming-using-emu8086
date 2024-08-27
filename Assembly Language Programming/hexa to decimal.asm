.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h 
    mov bl,al
    
    sub bl,17;65-48=17  
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,2;output funtion call
    mov dl,49;1 k print korte hole 
    int 21h
      
    mov ah,2
    mov dl,bl 
    int 21h
    
 exit:
    mov ah,4ch
    int 21h
    main endp
 end main