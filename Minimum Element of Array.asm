.model small
.stack 100h
.data
arr db 8,5,0,9,1,1
len equ $-arr
msg1 db 'Minimum Element of Array is: $'
compare db ?
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h 
    
    mov cx,[len]
    
    mov si,offset arr
    mov dl,[si]
    mov [compare],dl
    
    label:     
    
    
    cmp [si],dl
    jl min
    
    Continue:
    inc si
    
    loop label
    
    mov dl,[compare]  
    add dl,48
    mov ah,2
    int 21h
    hlt
    
    
    
    min:
    mov al,[si]
    mov dl,[si]
    mov [compare],al
    jmp Continue
     
    main endp
end main