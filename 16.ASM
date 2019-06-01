org 100h
use16                      
;Найти кол-во элементов в старшем бите которых 1


Start: 
    push arr
    call FindHigh
    ret 
        
        
FindHigh:
    push bp
    mov bp,sp
    
    xor ax,ax
    
    mov bx,[bp+4]
    mov cx,[bx]
    xor ch,ch
    
    
    @@:
    inc bx
    test byte[bx],10000000b
    jz .exloop
    inc ax
    
    
    .exloop:
    loop @B
    
    
    
    .exit:
    pop bp
    ret 2
 
 
arr db 10,1,11111111b,3,4,5,6,10000000b,8,9,10