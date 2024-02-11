;Sum of all elements of array
.model small
.stack 100h
.data
arr db 4,2,6,2,1,5,9
len equ $-arr
msg db 'Sum of all Elements of arrays is: $'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    mov cx,len
    mov ax,0
    
    label:
    add ax,[si]
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