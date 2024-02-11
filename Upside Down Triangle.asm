mov ah,1
int 21h
sub al,48
;mov ax,ah      
      
mov cl,al
mov bl,al

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h
outer_loop:
    mov dx,'*' 
    mov bh,0
        inner_loop:
        mov ah,2
        int 21h
        add bh,1
        cmp bh,bl
        jl inner_loop:
        
        sub bl,1
        mov dx,10
        mov ah,2
        int 21h
        
        mov dx,13
        mov ah,2
        int 21h
        dec cl
                ;inc ax
cmp cl,0
jne outer_loop       
;loop outer_loop