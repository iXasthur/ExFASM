org 100h
use16                      
;Заменить все по порядку числа в массиве на чисто N-индекс


Start: 
    push arr     
    push N
    call changeElements
    ret
    
    
    
changeElements:   
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov ax,[bx]
    xor ah,ah
    
    mov bx,[bp+6]
    mov cx,[bx]
    xor ch,ch
    
    add bx,cx
    
    @@:         
    mov ah,al
    sub ah,cl
    mov byte[bx],ah
    
    dec bx
    loop @B
    
    pop bp
    ret 4    
    
    
    
    





arr db 10,1,2,3,4,5,6,7,8,9,10 ;     
N db 20          




