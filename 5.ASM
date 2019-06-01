org 100h
use16                      
;найти сумму элементов меньше данного и кратных 4


Start: 
    push arr
    push lo
    call findSum4
    ret   
    

findSum4:
    push bp
    mov bp,sp
    
    mov bx,[bp+6]
    mov cx,[bx]
    xor ch,ch
    
    mov bx,[bp+4]
    mov dx,[bx]
    xor dh,dh   
    
    mov bx,[bp+6]    
    
    mov dh,4  
    
    xor di,di
    
    @@: 
    inc bx  
    cmp byte[bx],dl
    jg .exit
    
    mov ax,[bx]
    xor ah,ah
    div dh
    
    cmp ah,0
    jne .exit
    
    mov ax,[bx]
    xor ah,ah
    add di,ax 
    
    
    
    .exit:
    loop @B
    
    
    
    pop bp
    ret 4
    
    
    
arr db 6,32,4,6,8,12,16
lo db 12
    

