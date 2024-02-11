.model small
.stack 100h
.data
var db 'Hello $'
len equ $-var

var2 db 'World$'
len2 equ $-var2

arr db [len+len2] dup('?')

sii dw ?
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    
    mov cx,[len]
    dec cx
    
    mov si,offset var
    mov bp,offset arr
    
    label:
    mov dl,[si]
    ;mov ax,si
    push si
    mov si,bp
    mov [si],dl
    pop si
    inc si
    inc bp
    loop label
    
    mov cx,[len2]
    dec cx
    
   ; mov bp,si
    
    mov si,offset var2
    
    label4:
    mov dl,[si]
    ;mov ax,si
    push si
    mov si,bp
    mov [si],dl
    pop si
    inc si
    inc bp
    loop label4
    
    mov si,offset arr
    
    
    label3:
    mov dx,[si]
    
    cmp dl,'?'
    je endpr
    
    mov ah,2
    int 21h
    inc si
    loop label3
    
    endpr:
    
    main endp
end main
    