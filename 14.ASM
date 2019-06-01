org 100h
use16                      
;Сравнить 2 С-строки. Вернуть 1 если равны 0- если не равны


Start: 
    push string5
    push string6
    call StringCompare
    ret 
        
        
StringCompare:
    push bp
    mov bp,sp
    
    xor ax,ax
    xor cx,cx
    not cx  
    mov di,[bp+4]
    repne scasb
    sub di,[bp+4]
    mov dx,di
    
    mov di,[bp+6]  
    xor cx,cx
    not cx  
    repne scasb
    sub di,[bp+6]
    
    cmp dx,di
    jne .exit
    mov cx,di
    dec cx
    
    mov si,[bp+4]
    mov di,[bp+6]  
    
    xor ax,ax    
    repe cmpsb
    jne .exit
    mov ax,1
    
    
    .exit:
    pop bp
    ret 4
 
 
 
 
string1 db 'AnimeOneLove~',0
string2 db 'AnimeOneLove',0
string3 db 'AnimeOneLove!',0
string4 db 'AnimeOneLove~',0 
     
string5 db 'PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP',0  
string6 db 'PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP',0  