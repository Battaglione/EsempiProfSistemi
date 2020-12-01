; ciclo while do  contatore da 0 a 9

TITLE ciclo while do 
.MODEL SMALL    
    
.DATA 
    conta           Db ?

.CODE                                                                                                

.STARTUP         
    mov conta,00h       ; conta e' un contatore da 0 a 10    
    
ciclo:        
    cmp conta,10        ; confronto conta con 10
    je saltafine   ; se uguale salta fineciclo
    inc conta           ; se diverso incrementa contatore
    jmp ciclo:   ; e ripete ciclo
saltafine:
;servizio DOS di chiusura programma
    mov ax, 4c00h ; exit to operating system.
    int 21h    
END

