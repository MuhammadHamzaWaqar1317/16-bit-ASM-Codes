



























































;.model small
;.stack 100h
;.data 
;var dw ? 
;high db ?
;low db ?   
;.code
;main proc
;    
;    ;mov ax,@data
;;    mov ds,ax
;;    
;;    mov bx,1
;;    mov dx,0
;;    mov cl,9
;;    mov al,0
;;
;;    MyLoop:
;;    
;;    add dx,bx
;;    
;;    cmp dl,10
;;    jl lessthan10
;;    
;;    cmp dl,10
;;    jge greater
;;    
;;    Continue:
;;    add bx,1
;;    
;;    loop Myloop
;;    
;;    lessthan10:
;;    add dx,48
;;    mov ah,2
;;    int 21h
;;    
;;    sub dx,48
;;   
;;    jmp continue 
;;    
;;    greater:
;;    mov [var],dx
;;    mov ax,dx
;;    aaa
;;    mov [high],ah
;;    mov [low],al
;;    
;;    mov dl,[high]
;;    add dl,48
;;    mov ah,2
;;    int 21h
;;    
;;    mov dl,[low] 
;;    add dl,48
;;    mov ah,2
;;    int 21h
;;    
;;    mov dl,10
;;    mov ah,2
;;    int 21h
;;    
;;    mov dl,13
;;    mov ah,2
;;    int 21h
;;    
;;    mov dx,[var]
;;    jmp continue
;
;     mov dx,15
;     mov ax,6
;     add ax,dx
;     div ax
;     aad
;    
;        
;    main endp
;end main
;