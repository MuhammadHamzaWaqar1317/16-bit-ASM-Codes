.model small
.stack 100h
.data
    ten db '10$'
    fifteen db '15$'
    TwentyOne db '21$'
    TwentySeven db '27$'
    ThirtySix db '36$'
    FourtyFive db '45$'
    FiftyFive db '55$'
    
.code
main proc
    
   
   
    mov bh,1
    mov dl,0
    mov cl,9
    mov al,0
    
    mov ax,@data
    mov ds,ax
    
    MyLoop:
    
    
    
    add dl,bh 
    
    
    cmp dl,10
    jl lessthan10
    
    cmp dl,10
    je equal10 
    
    cmp dl,15
    je equal15 
    
    cmp dl,21
    je equal21
    
    cmp dl,27
    je equal27
    
    cmp dl,36
    je equal36
    
    cmp dl,45
    je equal45
    
    cmp dl,55
    je equal55
    
    
    Continue:
    mov ch,dl
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,ch
    
    inc bh
    
    loop Myloop
    
    cmp cl,0
    je end
    
    lessthan10:
    add dl,48
    mov ah,2
    int 21h
    
    sub dl,48
   
    jmp continue
    
    equal10:
     mov ch,dl
     lea dx,ten
     mov ah,9
     int 21h

     mov dl,ch
     
     jmp Continue
    
    equal15:
    mov ch,dl
    lea dx,fifteen
    mov ah,9
    int 21h 
    mov dl,ch
    jmp Continue
    
    equal21:
    mov ch,dl
    lea dx,TwentyOne
    mov ah,9
    int 21h 
    mov dl,ch
    sub dl,1
    jmp Continue
    
    equal27:
    add dl,1
    mov ch,dl
    lea dx,TwentySeven
    mov ah,9
    int 21h 
    mov dl,ch
    jmp Continue
    
    equal36:
    mov ch,dl
    lea dx,ThirtySix
    mov ah,9
    int 21h 
    mov dl,ch
    jmp Continue
    
    equal45:
    mov ch,dl
    lea dx,FourtyFive
    mov ah,9
    int 21h 
    mov dl,ch
    jmp Continue 
    
    equal55:
    mov ch,dl
    lea dx,FiftyFive
    mov ah,9
    int 21h 
    mov dl,ch
    jmp end
    
    
    end:
    mov ah,4ch
    int 21h
    

    
    main endp
end main 


 
 
 
 
  ; ORIGNAL Program to ADD 10 digits without JUGAR
        ;
;  .model samll
;.stack 100h
;.data                 
;var db 0
;var2 dw ?
;.code
;main proc
;    
;    mov ax,@data
;    mov ds,ax
;    
;    mov ax,0
;    mov bx,1
;    
;    label:
;    add ax,bx
;    
;    mov [var2],ax
;    
;    aam
;    mov cx,ax  
;    jmp Output
;    continue:
;    mov ax,[var2]
;    inc bx
;    inc [var]
;    cmp [var],10
;    jne label
;    
;    hlt
;    
;    Output:
;    mov dl,ch 
;    add dl,48
;    mov ah,2
;    int 21h
;    
;    mov dl,cl
;    add dl,48
;    mov ah,2
;    int 21h
;    
;    mov dl,10
;    mov ah,2
;    int 21h
;    
;    mov dl,13
;    mov ah,2
;    int 21h
;    
;    jmp continue
;    
;    main endp
;end main