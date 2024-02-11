.model small
.stack 100h
.data
.code
main proc
    
    mov cx,5
     
    mov bl,0
    mov bh,1
    
    Outer:
        mov bl,0
        mov dl,1
        
        Inner:
        
        add dl,48
        mov ah,2
        int 21h
        sub dl,48 
        
        inc dl   
        inc bl
        
        cmp bl,bh
        jl Inner
        
        ;mov dh,dl
        add bh,1
        mov dl,10
        mov ah,2
        int 21h
        
        mov dl,13
        mov ah,2
        int 21h
        
        
        ;mov dl,1 
        
    loop Outer
    
    main endp
end main