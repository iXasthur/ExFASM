org 100h
use16                      
;Дан массив и чисто n. Заменить первые n элементов на 1  -1  2  -2   ...


Start: 
    push arr 
    push n
    call changeArr
    ret
    
    
    
changeArr:   
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov cx,[bx]
    
    mov bx,[bp+6] 
    
    mov dx,1
    xor ax,ax
    @@:
    add bx,2
    mov word[bx],dx
    not dx
    inc dx 
    
    add ax,1
    cmp ax,2
    jl .exit 
    inc dx
    xor ax,ax   
    
    .exit:
    loop @B
    
    
    
    
    pop bp
    ret 4    
    
    
    
    





arr dw 10,100,100,100,100,100,100,100,100,100,100
n dw 7              




