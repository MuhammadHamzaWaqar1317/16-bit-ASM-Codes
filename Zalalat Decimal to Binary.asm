        


.model small
.stack 100h
.data
;arr db 3,5,6,7,8
len equ $-arr
msg1 db 'Binary of 4720 is: $'

var dd ?
var2 dd ?
arr db 16 dup(0)
.code
main proc
    
       
    mov ax,@data
    mov ds,ax
                       
    push 1
    push 2
    push 4
    push 8
    push 16
    push 32
    push 64
    push 80h
    push 256
    push 512
    push 1024
    push 2048
    push 4096
    push 8192
 
    mov cx,14

    mov si,offset arr 

    label:
    pop [var]
    inc bl
    
    cmp bl,7
    je branch
    
    mov ax,[var]
    add [var2],ax

    
    Conditions:
    cmp [var2],4720
    jg greater
    
    cmp [var2],4720
    jl less
    
    
    cmp [var2],4720
    je even
     
    
    endLabel:
    
    loop label
    even:
    ;hlt
    
    test [var2],1
    jp insert1
    
    test [var2],1
    jnp insert0
    
    after1:
    lea dx,msg1
    mov ah,9
    int 21h 
    mov si,offset arr
    mov cx,14
    label2:
    mov dl,[si]
    add dl,48
    mov ah,2
    int 21h
    inc si
    loop label2
    hlt
    
    greater: 
    
    cmp bl,7
    je sub128
    continue:
    mov [si],0
    inc si
    mov ax,[var]
    sub [var2],ax
     
    jmp endLabel 
    
    less:
    
    mov [si],1
    inc si
    jmp endLabel

    branch:
    add [var2],128
    jmp Conditions 
    
    sub128:
    sub [var2],128
    mov [si],0
    inc si 
   
    jmp endLabel
    
    insert1:
    mov [si],1
    jmp after1
    
    insert0:
  
    mov [si],1
    jmp after1
    
    main endp
end main

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
                      






























        ;
;
;
;.model small
;.stack 100h
;.data
;;arr db 3,5,6,7,8
;len equ $-arr
;msg1 db 'Even Numbers are: $'
;msg2 db 'Odd Numbers are: $'
;var dd ?
;var2 dd ?
;arr db 16 dup('?')
;.code
;main proc
;    
;       
;    mov ax,@data
;    mov ds,ax
;                       ;
;    push 1
;    push 2
;    push 4
;    push 8
;    push 16
;    push 32
;    push 64
;    push 80h
;    push 256
;    push 512
;    push 1024
;    push 2048
;    push 4096
;    push 8192
; 
;    mov cx,13
;   ; mov [var],80h
;   ; cmp [var],ff80
;    
;    mov si,offset arr 
;;    mov si,offset varrr
;    label:
;    pop [var]
;    inc dl
;    
;    cmp dl,7
;    je branch
;    
;    mov ax,[var]
;    add [var2],ax
;    ;pop [var]
;    
;    Conditions:
;    cmp [var2],4720
;    jg greater
;    
;    cmp [var2],4720
;    jl less
;    
;    
;    cmp [var2],4720
;    je even
;     
;    
;    endLabel:
;    
;    loop label
;    even:
;    ;hlt 
;    mov si,offset arr
;    mov cx,13
;    label2:
;    mov dl,[si]
;    add dl,48
;    mov ah,2
;    int 21h
;    inc si
;    loop label2
;    hlt
;    
;    greater: 
;    
;    cmp dl,7
;    je sub128
;    continue:
;    mov [si],0
;    inc si
;    mov ax,[var]
;    sub [var2],ax 
;    jmp endLabel 
;    
;    less:
;    ;mov ax,[var]
;;    add [var2],ax
;    ;push 1
;    mov [si],1
;    inc si
;    jmp endLabel
;;    add var2,[var]
;    
;    branch:
;    add [var2],128
;    jmp Conditions 
;    
;    sub128:
;    sub [var2],128
;    mov [si],0
;    inc si
;    jmp endLabel
;    
;    main endp
;end main