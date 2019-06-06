org 100h
use16                      
;Найти самый большой отрицательный элемент


Start: 
    push arr
    call FindMaxL
    ret 
    
    
    
FindMaxL:
    push bp
    mov bp,sp
    push bx
    
    mov bx,[bp+4]
    mov cx,[bx]
    
    xor dx,dx
    @@:
    add bx,2
    mov ax,[bx]
    cmp ax,0
    jge .ex
    cmp dx,0
    je .zero
    
    cmp ax,dx
    jg .zero
    
    jmp .ex
    .zero:
    mov dx,ax
    
    .ex:
    loop @B
    
    mov ax,dx  
    neg dx
    
    .exit:
    pop bx
    pop bp
    ret 2
 
 
 
 
arr dw 11,50,60,20,10,-20,-30,-15,17,-3,2,-120 
arr1 dw 2,1,2