.model small
.stack 100h
.data
arr db 5,6,9,4,1
len equ $-arr 
msg db 'Average of Array is: $'

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea si,arr
    mov cx, [len]
    mov ax,0
    label:
    add al,[si]
    inc si
    loop label
    
    mov bl,[len]
    div bl
    mov cl,al
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h
    main endp
end main