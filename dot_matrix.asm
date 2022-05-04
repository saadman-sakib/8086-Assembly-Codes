

.MODEL SMALL
.STACK 100H
.DATA 
    DOTS DB 07FH
.CODE    
    MAIN PROC  
        MOV DX, 2000H
        DEC DX   
        
    OUTER_ITER: MOV CX, 08H
    MOVING:
        PUSH CX
        
        ; Time Break
        INNER_1: MOV CX, 12H
        TIMER:  NOP
                LOOP TIMER 
             
             
        ; Writting letter       
        INC DX
        MOV AL, 07FH
        OUT DX, AL
        
        INC DX
        MOV AL, 019H
        OUT DX, AL
        
        INC DX
        MOV AL, 029H
        OUT DX, AL
        
        INC DX
        MOV AL, 046H
        OUT DX, AL
        
        INC DX
        MOV AL, 00H
        OUT DX, AL
        
        SUB DX, 0AH
                    
                    
        ; Removing Letter
        INNER_2: MOV CX, 05H
        L2: INC DX
            MOV AL, 0
            OUT DX, AL
            LOOP L2 
        
        ADD DX, 5H
        
        POP CX
        
        LOOP MOVING
    MAIN ENDP
    END MAIN