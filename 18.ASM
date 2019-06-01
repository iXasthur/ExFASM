org 100h
use16                      
;Найти сумму всех четных элементов в массиве


Start: 
    push arr
    call SumEven
    ret
    
    
SumEven:
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov cx,[bx]
    
    xor ax,ax
    
    @@:
    add bx,2
    
    test word[bx],0000000000000001b
    jnz .exloop
    add ax,[bx]
    .exloop:
    loop @B
    
    .exit:
    pop bp
    ret 2   
    
    
    
arr dw 10,1,2,3,-2,5,6,7,8,9,10
