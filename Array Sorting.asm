.model small
.stack 100h
.data
arr db 6,1,7,2,1
var1 db 'Before Sorting: $'
var2 db 'After Sorting: $'
.code
main proc
    
    mov cx,5
    mov ax,@data
    mov ds,ax
    mov bl,0
    
    
      
    
    lea dx,var1
    mov ah,9
    int 21h 
    
    mov si,offset arr
    
    Before:
    mov dx,[si]  
    add dx,48
    mov ah,2
    int 21h
    mov dx,','
    mov ah,2
    int 21h
    
    inc si
    
    loop Before 
    
    mov dx,10
    mov ah,2
    int 21h
    
    mov dx,13
    mov ah,2
    int 21h 
    
    mov dx,10
    mov ah,2
    int 21h
    
    mov dx,13
    mov ah,2
    int 21h
    
    lea dx,var2
    mov ah,9
    int 21h
    
    mov cx,4
    lea si,arr
    
    
    loop1:
    
        
        loop2:
        
        mov dh,[si]
        inc si
        mov dl,[si]
        
        cmp dh,dl
        jg swap
        
        continue:
        inc bl
        
        cmp bl,4
        jl loop2
        mov bl,0
        
        lea si,arr
        lea ax,arr
     
     loop loop1
     mov cx,5
     lea si,arr
     jmp print
     
     swap:
     dec si
     mov al,[si]
     inc si
     mov ah,[si]
     dec si
     mov [si],ah
     inc si
     mov [si],al
     jmp continue 
     
     print:
     
     mov dx,[si] 
     add dx,48
     mov ah,2
     int 21h
     
     mov dx,',' 
     mov ah,2
     int 21h
     
     inc si
     
     loop print   

    
    
    main endp
end main















































;.model small
;.stack 100h
;.data
;arr db 6,1,7,2,1
;var1 db ?
;var2 db ?
;.code
;main proc
;    
;    mov cx,4
;    mov ax,@data
;    mov ds,ax
;    mov bl,0
;    
;    mov si,offset arr
;      
;    
;    loop1:
;    
;        
;        loop2:
;        
;        mov dh,[si]
;        inc si
;        mov dl,[si]
;        
;        cmp dh,dl
;        jg swap
;        
;        continue:
;        inc bl
;        
;        cmp bl,4
;        jl loop2
;        mov bl,0
;        
;        lea si,arr
;        lea ax,arr
;     
;     loop loop1
;     mov cx,5
;     lea si,arr
;     jmp print
;     
;     swap:
;     dec si
;     mov al,[si]
;     inc si
;     mov ah,[si]
;     dec si
;     mov [si],ah
;     inc si
;     mov [si],al
;     jmp continue 
;     
;     print:
;     
;     mov dx,[si] 
;     add dx,48
;     mov ah,2
;     int 21h
;     
;     sub dx,48
;     
;     inc si
;     
;     loop print   
;
;    
;    
;    main endp
;end main