org 100h
use16

Start: 
    push arr
    call findUnique
    ret
    
    
findUnique: 
    push bp
    mov bp,sp
    push di
    
    mov di,[bp+4]
    mov cx,[di]
    dec cx
    
    xor ax,ax
    xor dx,dx
    
    @@:
    add di,2
    push cx
    push di  
    mov ax,[di]
    add di,2
    repne scasw  
    je .ex
    inc dx
    
    .ex:
    pop di
    pop cx
    loop @B 
    inc dx
    
    mov ax,dx
    .exit:
    pop di
    pop bp
    ret 2
    
    
    
arr dw 10,1,1,1,3,1,1,2,70,1,70