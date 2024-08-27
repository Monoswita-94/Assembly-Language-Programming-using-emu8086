.model small
.stack 100h
.data 
number db 'input 2 numbers $'   
result db 10, 13, 'print largest $'     

.code
main proc
    mov ax, @data
    mov ds, ax  
    
    mov ah, 9       ;print number
    lea dx, number 
    int 21h    
     
    mov ah, 1     
    int 21h
    mov bl, al     
    int 21h   
    
    
         
    mov bh, al    
    int 21h  
    
    
       
    mov cl, al      
    
    cmp bl, bh
    jge large1      ;if bl>=bh goto large1 segment 
    
    large2:
    cmp bh, cl
    jge large3      ;if bh>=cl go to large3   
    
    mov ah, 9       ;output msg
    lea dx, result
    int 21h
    
    mov ah, 2       ;output char(cl)
    mov dl, cl      
    jmp exit
    large3:
    mov ah, 9       ;output msg
    lea dx, result
    int 21h
       
    mov ah, 2      
    mov dl, bh     
    int 21h
    jmp exit   
    
    large1:
    cmp bl, cl
    jge large4 
    
    mov ah, 9       ;output msg
    lea dx, result 
    int 21h
    
    mov ah, 2
    mov dl, cl
    int 21h 
    jmp exit
    
    large4: 
    mov ah, 9       ;output msg
    lea dx, result 
    int 21h
    mov ah, 2
    mov dl, bl
    int 21h 
    ;jmp exit
    
                
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main