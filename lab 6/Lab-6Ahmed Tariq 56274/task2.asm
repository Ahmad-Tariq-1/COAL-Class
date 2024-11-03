.model small
.stack 100h
.data
.code
main proc
    ; Display digits 0 to 9
    mov dl, '0'          ; Start with ASCII for '0'
    mov cx, 10           ; Number of iterations for digits (0-9)
LABEL_DIGITS:           ; Label for the digit loop
    mov ah, 2            
    int 21h              ; Print character in DL
    inc dl               
    loop LABEL_DIGITS    ; Loop until CX is zero

    ; Display letters A to Z
    mov dl, 'A'          ; Start with ASCII for 'A'
    mov cx, 26           ; Number of iterations for letters (A-Z)
LABEL_LETTERS:          ; Label for the letter loop
    mov ah, 2            ;function to display character
    int 21h              ; Print character in DL
    inc dl              
    loop LABEL_LETTERS    ; Loop until CX is zero

    ; Exit the program
    mov ah, 4Ch          ; terminate program function
    int 21h
main endp
end main
