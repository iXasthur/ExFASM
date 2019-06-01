org 100h
use16                      
;Поменять местами первый и последний элементы, второй и предпоследний...


Start: 
    push arr
    call ArrChange
    ret 
        
        
ArrChange:
    push bp
    mov bp,sp
    
    mov di,[bp+4]
    mov bx,[bp+4]
    mov ax,[bx]
    xor ah,ah
    mov bp,ax  
    
    mov cx,2
    div cl
    mov cl,al
    
    add di,bp
    inc di 
    
    
    
    @@:
    dec di
    inc bx
    
    mov ah,[di]
    mov al,[bx]
    mov [di],al
    mov [bx],ah
    loop @B
    .exit:
    pop bp
    ret 2
 
 
 

iarr db 11,1,2,3,4,5,6,7,8,9,10,11 
arr db 11,1,2,3,4,5,6,7,8,9,10,11