org 100h
use16                      
;Найти сумму цифр числа


Start: 
    push N
    call CalcSumOfDigits
    ret
    
    
CalcSumOfDigits:
    push bp
    mov bp,sp  
    
    mov bx,[bp+4]          
    mov dx,10    
    
    xor ax,ax    
    mov al,byte[bx]     
    xor bx,bx
    
    @@:
    div dl 
    add bl,ah 
    xor ah,ah
    cmp al,0
    jne @B
    
    
    mov ax,bx
    
    pop bp
    ret 2      
    
        
N db 246