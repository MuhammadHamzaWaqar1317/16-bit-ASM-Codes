.model small
.stack 100h
.data 
.code
main proc
   mov bl,'0'
   mov bh,'1'
   
   mov dl,'1'
   mov cx,9
   
   Myloop:
    
    cmp dl,bh
    je equal1
    
    cmp dl,bl
    je equal2
    
    mov ah,2
    int 21h
    sub dl,1
     
    mov dh,dl
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,dh 
    
    loop Myloop
    jmp end
    equal1: 
    
    mov ah,2
    int 21h
    mov dl,'0'
    mov bh,0
    jmp Myloop
    
    equal2:
    
    mov ah,2
    int 21h 
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,'9'
    mov bl,0
    jmp Myloop
   
    end:
    mov ah,4ch
    int 21h
    
    
    main endp
end main
