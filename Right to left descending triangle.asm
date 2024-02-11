.model samll
.stack 100h
.data                 
.code
main proc
    
    
    mov cx,5
    mov bh,0
    mov bl,4
    
    Outer:
    
        cmp cx,1
        jg space
        
        continue:
        
        mov dl,5
        add dl,48
        Inner:
        
        mov ah,2
        int 21h
        dec dl
        
        inc bh
        cmp bh,5
        
        jl Inner
        
        dec bl
        mov bh,0
        
        
        
        mov dl,10
        mov ah,2
        int 21h  
        
        mov dl,13
        mov ah,2
        int 21h
        
        loop Outer 
        
        
         hlt
        
        space:
        
        mov dl,32
        mov ah,2
        int 21h
        
        inc bh
        
        cmp bh,bl
        jl space
        jmp continue
        
        
    
    main endp
end main