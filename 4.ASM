org 100h
use16                      
;инвертировать 3й бит во всех элементах массива


Start: 
    push [N]
    push arr2
    call invert3
    ret   
    

invert3:
    push bp
    mov bp,sp
    mov bx,[bp+4]   
    mov cx,[bp+6]
    @@:       
    xor word[bx],0000000000000100b
    add bx,2
    loop @B
    
    pop bp
    ret 4
    
        
arr1 dw 1,2,3,4,5,6,7,8,9,10 
arr2 dw 1,2,3,4,5,6,7,8,9,10   
N dw 10
    

