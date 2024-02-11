.model small
.stack 100h
.data 

arr db 3 dup('a'),'s',4 dup('z')
len dw equ$-arr
var1 db 3
var2 db 0

.code
main proc 
    
    mov ax,@data
    mov ds,ax
    
    
    mov cx,4
    mov bl,3 
    mov bh,0
    
    outer:
        ;mov dl,'*'
        cmp cx,1
        jg space
        
        Inner:
        mov dl,'*'
        mov ah,2
        int 21h
        
        mov dl,32
        mov ah,2
        int 21h
        
        inc bh
        
        cmp bh,4
        jne Inner
        
        ;;;;;;;;;;;;  
        mov bh,0
        dec [var1]
        mov [var2],0
        mov dl,10
        mov ah,2
        int 21h
        
        mov dl,13
        mov ah,2
        int 21h
        
    loop outer
     hlt
    space:
    mov dl,32
    mov ah,2
    int 21h
    
    mov al,[var1]
    inc bh
    inc [var2]
    cmp [var2],al  
    jne space
    jmp Inner
    