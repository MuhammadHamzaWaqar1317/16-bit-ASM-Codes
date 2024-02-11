.model small
.stack 100h
.data
lsb_dl db 0
temp_dl db 0
lsb_bh db 0
.code
main proc
     mov ax,@data
     mov ds,ax
     
     mov ah,00000111b  ; M
     ;test ah,1
     mov al,ah
     not al
     add al,1  ; -M  
     
     mov bh,0  ; A
     mov dl,00001101b ; Q
     mov dh,0   ; -Q
     
     mov cl,0 ; LOOP Control
     
     Label:
     
        test dl,1
        jnz Lsb_one
        
        test dl,1
        jz Lsb_zero
        Continue:
     inc cl
     
     cmp cl,4
     jl Label
     
     
     
     shl bh,4
     or bh,dl
     
     Lsb_one:
     
     test dh,1
     jnz one_one
     
     test dh,1
     jz one_zero
     ;;;;;;;;;;
     
     one_zero:
     add bh,al
     one_one:
     zero_zero:
     shift:
     
     shr dh,1
     mov [lsb_dl],dl
     and [lsb_dl],00000001b
     or dh,[lsb_dl]
     shr dl,1
     test dl,1
     mov [temp_dl],dl
     mov [lsb_bh],bh
     and [lsb_bh],00000001b
     shr dl,3
     or dl,[lsb_bh]
     shl dl,3
     or dl,[temp_dl]
     
     sar bh,1
     
     jmp Continue
     
     Lsb_zero:
     
     test dh,1
     jnz zero_one
     
     test dh,1
     jz zero_zero
     
     zero_one:
     add bh,ah
     jmp shift
     
     
  
    
    main endp
end main