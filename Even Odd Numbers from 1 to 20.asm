.model small
.stack 100h
.data
msg db 'When al=20 the following message is displayed $'
even db 'Number is even $'
odd db 'Number is odd $'
.code
main proc
    
        mov ax,@data
        mov ds,ax
        
        lea dx,msg
        mov ah,9
        int 21h 
        
        mov dl,10
        mov ah,2
        int 21h
        
        mov dl,13
        mov ah,2
        int 21h
        
        
        mov al,20
        
        
        and al,1
        jp Evennum
        
        noteven:
        lea dx,odd
        mov ah,9
        int 21h
        jmp end
        
        Evennum:
        lea dx,even
        mov ah,9
        int 21h
        
        end:
        mov ah,4ch
        int 21h
    
    main endp
end main









