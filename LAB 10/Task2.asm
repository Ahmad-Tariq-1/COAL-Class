addNumbers macro var1, var2
  
    mov dl, var1  
  
    add dl, var2  
    add dl,30h
    
    mov ah,2
    int 21h
    
    
     
endm

.model small
.stack 100h

.data 
var1 db 3  
var2 db 4      

.code

main proc 
    mov ax, @data     
    mov ds, ax 

    addNumbers var1, var2  

    
    mov ah, 4ch       
    int 21h    
main endp

end main