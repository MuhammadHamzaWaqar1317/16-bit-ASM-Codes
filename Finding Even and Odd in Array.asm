; Finding Even and Odd 
.model small
.stack 100h
.data
arr db 3,5,6,7,8
len equ $-arr
msg1 db 'Even Numbers are: $'
msg2 db 'Odd Numbers are: $'
.code
main proc
    
    push 255
    
    mov ax,@data
    mov ds,ax
    
    mov ax,0
    mov cx,[len]
    mov si,offset arr
    label:
    
    mov bl,[si]
    
    and bl,1
    jp even
    
    endlabel:
    inc si
    
    loop label
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    
    
    Even_Show:
    pop dx
    cmp dl,255
    je end_even
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,','
    mov ah,2
    int 21h
    jmp Even_Show
    
    end_even:
    push 255
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov cx,[len]
    mov si,offset arr
    mov bx,0
    Label_odd:
    
    mov bl,[si]
    
    and bl,1
    jnp Odd
    
    endlabel_odd:
    inc si
    
    loop label_odd
    
    mov dx,0
    
    Odd_Show:
    pop dx
    cmp dl,255
    je end_odd
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,','
    mov ah,2
    int 21h
    jmp Odd_Show
    
    end_odd:
    mov ah,4ch
    int 21h
    
    Odd:
    
    mov bx,0
    mov bl,[si]
    push bx
    jmp endlabel_odd
    
    even:
    mov bx,0
    mov bl,[si]
    push bx
    jmp endlabel 
    
    
    
    
    main endp
end main