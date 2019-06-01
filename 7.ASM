org 100h
use16                      
;Дан массив и число. Все элементы массива меньше данного числа увеличить на индекс


Start: 
    push arr    
    push number
    call calc
    ret 
    
    
calc:    
    push bp
    mov bp,sp
         
    mov bx,[bp+6]
    mov cx,[bx]
    xor ch,ch     
    
    mov bx,[bp+4]
    mov ax,[bx]
    xor ah,ah
    
    mov bx,[bp+6]  
    add bx,cx
    inc bx
    
    @@:
    dec bx
    
    cmp byte[bx],al
    jge .ex
    
    add byte[bx],cl
    
    .ex:
    loop @B
    
    pop bp
    ret 4   
    
arr db 10,1,2,3,4,5,6,7,8,9,10
number db 9  

    
    

