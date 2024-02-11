.model small
.stack 100h
.data
.code
main proc
    
    
    ; SUB krne se stack ke uper move krte hain TOP of STACK 
    ; ADD krne se stack ke neeche atay hain BOTTOM of STACK
    
    mov ax,2
    push ax
    
    mov ax,'1'
    push ax
    
    mov ax,3
    push ax
    
    mov ax,4
    push ax
    
    mov ax,244
    push ax
    
    mov bp,sp
    mov ax,sp
    
    
    label:
    cmp [bp],'1'
    je equal
    
    mov sp,bp
    mov si,bp
    
    add bp,2
    
    jmp label 
    
    equal:
    
    cmp [bp],244
    je endl
    
    mov sp,si
    pop ax
    
    mov [bp],ax
    
    sub bp,2
    sub si,2
    
    jmp equal
    
    
    endl:
    main endp
end main