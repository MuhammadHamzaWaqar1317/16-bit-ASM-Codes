.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    sub al,48
    mov cl,al
    
    mov dl,'/'
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov ch,al
    mov ah,0
    mov al,cl
    mov bl,ch
    div bl
    
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