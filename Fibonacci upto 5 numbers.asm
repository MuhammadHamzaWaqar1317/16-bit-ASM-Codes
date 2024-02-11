.model small
.stack 100h
.data
arr db 0,0,0,0,0
.code
main proc
    
    mov dl,0    ;a
    mov bl,1    ;b
    mov cx,5
    
    mov ax,@data
    mov ds,ax
    
    lea si,arr
    
    Fibonacci:
    
    mov [si],dl
    inc si
    
    add dl,bl
    mov bh,dl
    
    mov dl,bl
    
    mov bl,bh
    
    loop Fibonacci 
    
    lea si,arr
    
    mov cx,5
    
    Printing_Fibonacci_From_Array:
    
    mov dl,[si]
    inc si
    add dl,48
    
    mov ah,2
    int 21h
    
    mov bl,dl
    mov dl,','
    mov ah,2
    int 21h
    
    mov dl,bl
    
    sub dl,48
    
    loop Printing_Fibonacci_From_Array
    
    
    main endp
end main  








;mov dl,0    ;a
;    mov bl,1    ;b
;    mov cx,5
;    
;    Fibonacci:
;    add dl,48
;    
;    mov ah,2
;    int 21h
;    sub dl,48
;    add dl,bl
;    mov bh,dl
;    
;    mov dl,bl
;    mov bl,bh
;    
;    loop Fibonacci