org 100h
use16                      
;Bool(StrToInt_Unsigned)


Start:
    push N4
    call StrToUInt_B
    ret
    
    
StrToUInt_B:
    push bp
    mov bp,sp
    push bx
    
    xor ax,ax
    
    mov bx,[bp+4]
        
    xor cx,cx
    not cx
    
    @@:
    cmp byte[bx],' '
    je .ex1
    cmp byte[bx],0
    je .exit
    cmp byte[bx],'-'
    je .exit
    cmp byte[bx],'1'
    jl .exit
    cmp byte[bx],'9'
    jg .exit
    jmp .loopNumber
    .ex1:
    inc bx
    loop @B 
    
    .loopNumber:
    @@:
    cmp byte[bx],'1'
    jge .continue
    jmp .loopEnd
    .continue:
    cmp byte[bx],'9'
    jle .ex2 
    jmp .loopEnd
    .ex2: 
    inc bx
    loop @B
    
    .loopEnd:
    
    @@:
    cmp byte[bx],' '
    je .ex3
    cmp byte[bx],0
    jne .exit
    inc ax
    jmp .exit
    
    .ex3:
    inc bx
    loop @B
    
    .exit:
    pop bx
    pop bp
    ret 2 
    
    
    
N1 db '   -562712    ',0 
N2 db '5',0
N3 db 'b32',0
N4 db '  56',0
N5 db '56  ',0
N6 db '-1',0  
N7 db '    52542    1',0