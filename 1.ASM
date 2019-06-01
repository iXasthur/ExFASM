org 100h
use16                      
;Найти первое вхождение символа в строку

Start:   
    push string
    push symbol 
    call findSymbol
    ret   
    


findSymbol:    
    push bp
    mov bp,sp
    
    mov bx,[bp+4]
    mov ax,[bx]
    xor ah,ah
    
    mov di,[bp+6]      
    xor cx,cx
    mov cl,byte[di]
    inc di
    
    repne scasb
    sub di,[bp+6]  
    
    .exit:     
    pop bp
    ret 4                    
    
    
string db 36,'1234567890qwertyuiopasdfghjklzxcvbnm'
symbol db '0' ; 11 B 
