;REVERSING A STRING (PROCESS 2)

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV CX,0 ;count register 
    MOV AH,1 ;show the input function
    INT 21H 
    
    
  L1:
   CMP AL,0DH
   JE L2
   PUSH AX
   INC CX ;increase counter
   INT 21H
   JMP L1
   
   
    
  L2: 
   MOV AH,2
   MOV DL,10
   INT 21H
   MOV DL,13
   INT 21H
   
   JCXZ EXIT
   
 TOP:
   POP DX
   INT 21H
   LOOP TOP
  
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN