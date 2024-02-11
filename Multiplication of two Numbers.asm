.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    sub al,48
    mov bl,al
    
    mov dl,'x'
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov ah,0
    mul bl
    aam
    mov bl,al
    mov bh,ah
    
    mov dl,'='
    mov ah,2
    int 21h 
    
    mov dl,bh
    add dl,48
    mov ah,2
    int 21h 
    
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    
    
    main endp
end main