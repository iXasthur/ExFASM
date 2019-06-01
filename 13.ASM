org 100h
use16                      
;Найти кол-во элементов массива кратных данному числу


Start: 
    push N
    push arr
    call findElementsD
    ret 
    
    
    
findElementsD:
    push bp
    mov bp,sp
    
    mov bx,[bp+6]
    mov dx,[bx]
    xor dh,dh
    
    mov bx,[bp+4]
    mov cx,[bx]
    xor ch,ch   
    
    @@: 
    inc bx  
    xor ax,ax
    mov al,byte[bx]  
    
    div dl
    cmp ah,0  
    jne .exit 
    inc dh
    
    .exit:
    loop @B
    
    pop bp
    ret 4
    
    
    
arr db 10,1,2,3,4,5,6,7,8,9,10
N db 3
    