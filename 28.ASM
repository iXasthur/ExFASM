org 100h
use16

Start: 
    push arr
    call Invert
    ret 
        
        
Invert: 
    push bp
    mov bp,sp
    push bx
    push di      
    
    mov bx,[bp+4]  
    mov cx,[bx]  
    xor ch,ch 
    
    mov di,[bp+4]
    add di,cx
    inc di 
    
    mov ax,cx
    mov dx,2
    div dl
    xor ah,ah
    
    mov cx,ax
    
    xor ax,ax
    @@:
    inc bx
    dec di
    mov al,byte[bx]
    mov ah,byte[di]
    mov byte[bx],ah
    mov byte[di],al
    loop @B
    
    pop di
    pop bx 
    pop bp
    ret 2
    
arr db 10,1,2,3,4,5,6,7,8,9,10