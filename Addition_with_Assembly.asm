.model small
.stack 100h
.data
    msg db "Enter 1st number: $"  
    msg1 db 0ah, "Enter 2nd number: $"
    msg2 db "Sum is: $"
    

.code
main proc
    
    
    mov ax,@data
    mov ds,ax 
    
    lea dx,msg
    mov ah,9
    int 21h  
    
      
      
    mov ah,1
    int 21h   
    mov cl,al 
    
    
    mov ah,2
    mov dl,0dh
    int 21h     ; for print new line
    mov dl,0ah
    int 21h
    
      
    lea dx,msg1
    mov ah,9
    int 21h
              
              
    mov ah,1
    int 21h  
    mov bl,al 
    
    
    mov ah,2
    mov dl,0dh
    int 21h     ; for print new line
    mov dl,0ah
    int 21h
      
      
    add bl,cl  ;plus bl and cl 
    sub bl,48  ;minus 48 from bl for get real addition result  
      
    lea dx,msg2
    mov ah,9
    int 21h
      
      
      
    mov ah,2
    mov dl,bl
    int 21h
      

    main endp
end main