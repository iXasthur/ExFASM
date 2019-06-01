org 100h
use16                      
;Поменять элементы 2 массивов местами


Start: 
    push arr1
    push arr2
    call ArrEXChange
    ret 
        
        
ArrEXChange:
    push bp
    mov bp,sp
    
    mov di,[bp+4]
    mov cx,[di]
    xor ch,ch 
    
    mov si,[bp+6]
    
    
    @@:     
    inc di
    inc si
    
    mov al,byte[di]
    mov ah,byte[si]
    mov byte[di],ah
    mov byte[si],al
    loop @B
    
    
    .exit:
    pop bp
    ret 4
 
 
arr1 db 50,15 dup(1),15 dup(2),15 dup(3),5 dup(4)   
arr2 db 50,15 dup(5),15 dup(6),15 dup(7),5 dup(8) 