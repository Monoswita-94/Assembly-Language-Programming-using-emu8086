.model small
.stack 100h

.data

a dw ?       

b dw ?     

c db 'Input first digit ',10,13,'$'   

d db 10,13,'Input second digit ',10,13,'$'

e db 10,13,'Result ',10,13,'$'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,c
    int 21h       
    
    mov ah,1
    int 21h 
    sub al,48
    mov ah,0
    mov [a],ax
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,1
    int 21h
    sub al,48 
    mov ah,0
    mov [b],ax
    
  
    
    mov ah,9
    lea dx,e
    int 21h  
    
    mov ax,a
    mul b ;a*b=ax 
    
    add ax,48 
     
    
   
    mov dx,ax 
    mov ah,2 
    int 21h 
    
    
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp

end main
