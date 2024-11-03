display macro var1,var2
   
    lea dx, var1
    mov ah, 09h
    int 21h
     
    call newline
    
    
    lea dx, var2
    mov ah, 09h
    int 21h
     
    
endm

.model small
.stack 100h
.data
var1 db 'hello$'
var2 db 'world$'
.code
main proc
    mov ax, @data
    mov ds, ax  
          
    display var1,var2
    
    
    mov ah, 4Ch
    int 21h
    
main endp
newLine proc 
    mov dx , 10
    mov ah ,2 
    int 21h
    
    mov dx , 13
    mov ah ,2 
    int 21h
    ret
newLine endp
end main