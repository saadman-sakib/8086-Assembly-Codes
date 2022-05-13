.MODEL SMALL
.STACK 100H
.DATA 
    DOTS DB 1111111B, 0011001B, 0101001B, 1000110B, 0000000B
.CODE    
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
              
        MOV DX, 2000H
        DEC DX   
        
    OUTER_ITER: MOV CX, 08H
    MOVING:
        PUSH CX
        
        ; Time Break
        MOV CX, 12H
        TIMER:  NOP
                LOOP TIMER 
             
        ; Writting letter 
        MOV CX, 5 
        MOV DI, 0 
        WRITE:       
            INC DX
            MOV AL, DOTS[DI]
            OUT DX, AL
            INC DI
            LOOP WRITE
                
        SUB DX, 0AH
                              
        ; Removing Letter
        MOV CX, 05H
        REMOVE: INC DX
            MOV AL, 0
            OUT DX, AL
            LOOP REMOVE 
        
        ADD DX, 5H
        
        POP CX
        
        LOOP MOVING
    MAIN ENDP
    END MAIN