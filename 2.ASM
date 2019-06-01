org 100h
use16                      
;«аменить все строчные буквы на заглавные

Start: 
    mov ah,09h           
    mov dx,string
    add dx,1
    int 21h
    
    push string   
    call changeString 
    
    mov ah,09h           
    mov dx,string
    add dx,1
    int 21h
    ret    
    
    
changeString:   
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    
    mov cx,[bx]  
    xor ch,ch    
    
    @@:
    inc bx
    cmp byte[bx],'a'
    jb .exit
    cmp byte[bx],'z'
    ja .exit
    sub byte[bx],32
    
    .exit:
    loop @B
    
    
    
    pop bp
    ret 2
    
    
string db 16,'AnimeOneLove~',13,10,'$'
