org 100h
use16


Start: 
    mov ax,13h
    int 10h
    
    mov ax,$A000
    mov es,ax     
    
    xor di,di
    mov di,1000
    mov byte[es:di],15
    ret