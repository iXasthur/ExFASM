org 100h
use16                      
;Шифрование Цезаря +3


Start: 
    push string    
    call encrypt
    ret                
    
    
    
    
encrypt:       
    push bp
    mov bp,sp
    
    mov bx,[bp+4]   
    mov cx,bx
    xor ch,ch
    
    @@:
    inc bx
    cmp byte[bx],'A'
    jl .exit
    cmp byte[bx],'z'
    jg .exit
    cmp byte[bx],'Z'
    jle .plus3
    cmp byte[bx],'a'
    jl .exit
    .plus3: 
    
    add byte[bx],3
    cmp byte[bx],'z'
    jle .c1
    sub byte[bx],26
    jmp .exit
    .c1: 
    cmp byte[bx],'a'
    jge .exit
    cmp byte[bx],'Z'
    jle .exit
    sub byte[bx],26
    
    
    .exit:
    loop @B 
    
    
    
    pop bp
    ret 2 
    

    
    
    
string db 20,'I love ANIME~XYZ_xyz'
    
    


    
    

