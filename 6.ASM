org 100h
use16                      
;найти сумму элементов массива


Start: 
    push arr
    call calc
    ret 
    
    
calc:    
    push bp
    mov bp,sp
         
    mov bx,[bp+4]
    mov cx,[bx]   
    
    xor ax,ax
    
    @@: 
    add bx,2
    
    add ax,[bx]
    
    loop @B  
    
    pop bp
    ret 2   
    
arr dw 10,1,2,3,4,5,6,7,8,9,10  

    
    

