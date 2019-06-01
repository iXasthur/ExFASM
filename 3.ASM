org 100h
use16                      
;Найти кол-во элементов меньше данного


Start: 
    push arr
    push element
    call findLower
    ret 
   

findLower:     
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov ax,[bx] 
    
    mov bx,[bp+6]
    mov cx,[bx]
    
    xor di,di
    @@: 
    add bx,2
    mov dx,[bx]  
    
    cmp dx,ax
    jge .ex
    
    inc di
    
    .ex:
    loop @B
    
    pop bp
    ret 4


arr dw 7,14,9,10,7,11,8,12
element dw 10 
    

