org 100h
use16                      
;Найти кол-во элементов у которых первые 2 бита равны 1


Start: 
    push arr
    call findElements
    ret
    
    
    
findElements:   
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov cx,[bx]
    
    xor ax,ax
    @@:
    add bx,2
    test word[bx],0000000000000001b 
    jz .exit
    test word[bx],0000000000000010b 
    jz .exit             
    inc ax
    .exit:
    loop @B  
    
    pop bp
    ret 2    
    
    
    
    





arr dw 10,1,2,3,4,5,6,7,8,9,10 ; 2               




