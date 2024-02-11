;Product of all Elements of Array
.model small
.stack 100h
.data
arr db 1,3,2,4,4
len equ $-arr
msg db 'Product of all Elements of Array is: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    mov cx,[len]
    
    mov ax,0
    mov bx,0
    mov bx,1
    label:
    mov al,[si]
    mul bl
    mov bl,al
    inc si
    loop label
    aam
    
    mov ch,ah
    mov cl,al
    
    lea dx,msg
    mov ah,9
    int 21h 
    
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