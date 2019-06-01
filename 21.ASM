org 100h
use16                      
;Найти чисто единичных бит в числе


Start: 
    push N
    call FindOneBits16
    ret
    
    
FindOneBits16:
    push bp
    mov bp,sp
    
    mov cx,16
    mov bx,[bp+4]
    mov bx,[bx]
    
    xor ax,ax
    @@:
    shr bx,1
    adc ax,0
    
    loop @B
    

    .exit:
    pop bp
    ret 2      
    
    
    
N dw 0101010111001010b
    
