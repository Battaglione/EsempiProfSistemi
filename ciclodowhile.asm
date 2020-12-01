;ciclo senza loop ciclo do while conta da 1 a 10
TITLE ciclo do-while
.MODEL SMALL    
    
.DATA 
    conta           Db ?

.CODE                                                                                                

.STARTUP         
    mov conta,00h       ; conta e' un contatore da 0 a 10
    
ciclo:         
    inc conta 
    cmp conta,10        ; confronto conta con 10
    jb  ciclo           ; se minore salta a ciclo
;servizio DOS di chiusura programma
    mov ax, 4c00h ; exit to operating system.
    int 21h    
END

