;.model small
;.stack 100h
;.data  
;msg db 'The Factorial of 4 is: $'
;.code
;main proc 
;    mov ax,@data
;    mov ds,ax
;    
;    mov ax,1
;    mov bx,4
;    
;    MyLoop:
;    mul bx
;    mov dx,ax
;    aam
;    
;    
;    
;    sub bx,1
;    
;    cmp bx,1
;    je end
;    
;    loop MyLoop
;    
;    
;    end:
;    add dl,48
;    add dh,48
;    
;    mov ch,dh
;    mov cl,dl
;    
;    lea dx,msg
;    mov ah,9
;    int 21h
;    
;    mov dl,ch
;    mov ah,2
;    int 21h
;    
;    
;    mov dl,cl
;    mov ah,2
;    int 21h
;    
;    
;    mov ah,4ch
;    int 21h
;    
;    main endp
;end main                          


; FACTORIAL of 4 

.model samll
.stack 100h
.data                 
var db 0
var2 db ?
var3 db ?
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ax,4
    mov bx,3
    
    label:
    mul bx
    
    mov cx,ax
    aam
    mov [var2],ah
    mov [var3],al
    mov dl,[var2]
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,[var3] 
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov ax,cx
    dec bx
    inc [var]
    cmp [var],2
    jne label
    
    main endp
end main