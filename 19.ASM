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
     
    push bx
    
    
    mov cx,16
    
    mov bx,[bp+4]
    mov ax,[bx]
    
    xor dx,dx
    
    
    @@:
    shr ax,1
    adc dx,0 
    cmp cx,1
    shl dx,1
    loop @B
    rcr dx,1
    
    mov bx,[bp+4]
    mov [bx],dx
    
    
    
    .exit:
    pop bx
    pop bp
    ret 2   
    
    
    
initN dw 0110000000101010b  
N dw 0110000000101010b
