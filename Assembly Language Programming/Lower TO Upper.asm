.MODEL SMALL
.STACK 100H 
.CODE 
MAIN PROC  
    
    
    MOV AH,1     ;INPUT
    INT 21H                  ;LOWER TO UPPER CASE
    MOV BL,AL
    
    MOV AH,2   ;new line
    MOV DL,13
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    
    ;ADD BL,32
    
    SUB BL,32
    
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
  
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

