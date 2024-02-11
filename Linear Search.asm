.model small
.stack 100h
.data
arr db 2,6,7,3,4
msgFound db 'Found$'
msgNotFound db 'Not Found$'
.code
main proc
        mov ax,@data
        mov ds,ax 
        mov cx,5
        
        
        mov si,offset arr
        
        loop1:
        
        
        mov ax,[si]
        cmp ah,4
        je found
        inc si
        
        loop loop1
        
        jmp notfound:
        
        
        found:
        mov cx,ax
        
        lea dx,msgfound
        mov ah,9
        int 21h
        
        mov dx,cx 
        jmp end
        
        
        notfound:
        mov bx,ax
        
        lea dx,msgNotfound
        mov ah,9
        int 21h
        
        
        end:
        mov ah,4ch
        int 21h

    main endp
end main







