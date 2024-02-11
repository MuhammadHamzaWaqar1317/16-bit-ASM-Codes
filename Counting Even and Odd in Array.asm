; Counting Even and Odd 
.model small
.stack 100h
.data
arr db 3,5,6,7,8
len equ $-arr
msg1 db 'Total Even numbers in Array are: $'
msg2 db 'Total Odd numbers in Array are: $'
Even_num db 0
Odd_num db 0
.code
main proc
    
    
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
    
    mov dl,[Even_num]
    add dl,48
    mov ah,2
    int 21h
    
    
    
    end_even:
    
    
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
    
    mov dl,[Odd_num]
    add dl,48
    mov ah,2
    int 21h
    
    end_odd:
    mov ah,4ch
    int 21h
    
    Odd:
    
    inc [Odd_num]
    jmp endlabel_odd
    
    even:
    inc [Even_num]
    jmp endlabel 
    
    
    
    
    main endp
end main