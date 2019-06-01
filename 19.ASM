org 100h
use16                      
;«аписать двоичное число в обратном пор€дке


Start: 
    push N
    call RevNum
    ret
    
    
RevNum:
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov ax,[bx]
    
    ror ax,7 
    mov [bx],ax
    
    
    
    
    .exit:
    pop bp
    ret 2   
    
    
    
initN dw 0001010000001000b  
N dw 0001010000001000b
