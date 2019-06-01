org 100h
use16                      
;Сумма четных элементов


Start: 
    push arr
    call sumEven
    ret    
    
    
    
sumEven:
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov cx,[bx]
    
    xor ax,ax
    @@:
    add bx,2
    
    test word[bx],0000000000000001b
    jnz .exit
    add ax,[bx]
    .exit:
    loop @B
    
    
    pop bp
    ret 2
    
    
    





arr dw 10,1,2,3,4,5,6,7,8,9,10               




