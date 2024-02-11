.model small
.stack 100h
.data
msg1 db 'Enter First Number: $'
msg2 db 'Enter Second Number: $'
msg3 db 'Sum of these two numbers is: $'

var1 db ?

Sum macro var,msg_1,msg_2
    
    call NewLine
    call NewLine
    
    lea dx,msg_1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    add [var],al
    
    call NewLine
    call NewLine
    
    lea dx,msg_2
    mov ah,9
    int 21h 
    
    mov dl,[var]
    mov ah,2
    int 21h
    
    
    endm
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mov [var1],al
    
    Sum var1,msg2,msg3
    
    mov ah,4ch
    int 21h
    
    main endp 

NewLine proc
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    ret
    NewLine endp
    

end main