.model small
.stack 100h
.data
    var1 db 5
    arr db 4, 1, 3, 5, 6, 7  ; Array with multiple elements
    arr2 db 'a', 'b', 'c', 'g'

.code
main proc
    mov ax, @data            ; Get reference of data
    mov ds, ax               ; Initialize data segment
    
    lea si, arr              ; Load the effective address of arr into SI
    mov cx, 6                ; Number of elements in the array (6 elements)
    
display_loop:               ; Label for displaying the array elements
    mov dl, [si]             ; Get value at address SI
    add dl, 48               ; Convert to ASCII
    mov ah, 2                ; DOS function to display character
    int 21h                  ; Print character in DL
    
    inc si                   ; Move to the next element in the array
    loop display_loop        

    ; Exit the program
    mov ah, 4Ch              ; DOS terminate program function
    int 21h
main endp
end main
