.model small
.stack 100h
.data
var db 0 
inner5 db 5
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    ;mov al,0
    mov dl,5
   ; mov bl,5
    mov bh,0
    mov cl,0
    
    Outer:
    
    mov bl,0
    cmp cl,1
    jge space
    
        Inner:
        
        add dl,48
        mov ah,2
        int 21h
        sub dl,48
        inc bl
        dec dl
        
        ;cmp bl,5
        cmp bl,[inner5]
        jl Inner
        
        mov dl,10
        mov ah,2
        int 21h
        
        mov dl,13
        mov ah,2
        int 21h
        
        mov dl,5
        mov bh,0
        inc cl
        ;inc al
        inc [var]
        
    cmp cl,5
    jl Outer
    mov ah,4ch 
    int 21h
    space:
    mov ch,dl
    mov dl,32
    mov ah,2
    int 21h
    mov dl,ch
    inc bh
    dec dl
    ;dec [inner5]
    inc bl
    ;cmp bh,al
    ;inc bl
    cmp bh,[var]
    jl space
    
    jmp Inner
    
    main endp
end main