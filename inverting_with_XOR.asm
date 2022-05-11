

.MODEL SMALL
.STACK 100H
.DATA 
.CODE    
    MAIN PROC  
      MOV BH, 10111011b ; setting a value
      XOR BH, 00001111b ; inverting only lower bytes of AL
    MAIN ENDP
    END MAIN
