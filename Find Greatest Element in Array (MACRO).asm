.model small
.stack 100h
.data
arr db 2,6,3,9,1
len equ $-arr 
var1 DB 'Maximum Number in Array is: $'

.code




Max macro arrs,lens,var1
    mov si,offset arr
    mov cx,len
    mov al,[si]
    dec cx
    label:
    
    
    cmp [si+1] ,al
    jg greater
    
    endLabel:
    
    inc si
   
    loop label
    
    mov bl,al
    
    lea dx,var1
    mov ah,9
    int 21h
    
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    
    mov ah,4ch 
    int 21h
    
    
    greater:
    mov al,[si+1]
    jmp endLabel
    
    endm

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov si,offset arr
    Max arr,len,var1             

main endp
end main