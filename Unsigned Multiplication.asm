.model small
.stack 100h
.data
.code
main proc
    
    mov al,0111b 
    mov ah,0011b 
   ; or ah,1000b
    mov cx,0
    mov bl,0 
    
    label:
    
    
    test ah,1
    jz shift
    
    add bl,al
    jmp shift
    Continue:
    inc cx
    cmp cx,4
    jl label
     
     mov al,bl
     shl al,4
     or al,ah
     mov ah,0
     aam
    shift:
    test bl,1
    jz lsb_zero
    
    shr ah,1 
    or ah,1000b
    
    shr bl,1  
    jmp Continue 
    
    lsb_zero:
    shr ah,1
    shr bl,1
    jmp Continue
    
    main endp
end main