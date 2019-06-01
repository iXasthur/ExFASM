org 100h
use16                      
;Дана С-строка. Первые буквы после пробелов изменить на заглавные


Start: 
    push string
    call NormalizeString
    ret
    
    
NormalizeString:
    push bp
    mov bp,sp
    
    mov di,[bp+4]
    xor cx,cx
    not cx
    
    mov al,0
    repnz scasb
    sub di,[bp+4]
    dec di
    
    mov cx,di
    mov di,[bp+4]
    @@:
    cmp byte[di],' ' 
    jne .exloop
    cmp byte[di+1],0
    je .exloop
    cmp byte[di+1],'a'
    jl .exloop
    cmp byte[di+1],'z'
    jg .exloop
    sub byte[di+1],32
    
    .exloop:
    inc di
    loop @B 
    
    
    
    
    .exit:
    pop bp
    ret 2   
    
    
    
string db ' anime g   One love!!! f',0
