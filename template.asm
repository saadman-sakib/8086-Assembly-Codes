.MODEL SMALL
.STACK 100H
.DATA  
    DOTS DB 9Dh
.CODE    
    MAIN PROC
        MOV DX, @DATA
        MOV DS, DX
        
        MOV DH, DOTS 
        MOV CH, DOTS

    MAIN ENDP
    END MAIN
