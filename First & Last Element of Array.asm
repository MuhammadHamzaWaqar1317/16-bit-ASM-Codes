.model small
.stack 100h
.data
arr db 9,5,1,9,0,9
len equ $-arr
msg1 db 'First Element of Array is: $'
msg2 db 'Last Element of Array is: $'
msg3 db 'Sum of these Elements is: $'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov si,offset arr
    
    mov dl,[si]
    mov cl,[si]
    add dl,48
    mov ah,2
    int 21h
    
    mov bx,[len]
    dec bx
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov dl,[si+bx]
    add cl,dl
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h 
    
    lea dx,msg3
    mov ah,9
    int 21h
    
    mov ax,0
    mov al,cl
    aam
    
    mov ch,ah
    mov cl,al
    
    
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    
    
    main endp
end main