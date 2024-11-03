.model small
.stack 100h
.data
    arr db 4, 1, 3, 5     ; Array with 4 elements
    sum db 0               ; Variable to store the sum
    result db 'Sum: ', 0   ; Message to display
    sumValue db 0          
.code
main proc
    ; Initialize data segment
    mov ax, @data
    mov ds, ax
    xor al, al           
    mov cl, 4              ; Number of elements in the array
    lea si, arr            ; Load address of the array into SI
sum_loop:                  
    add al, [si]          ; Add the current element to AL
    inc si                ; Move to the next element in the array
    loop sum_loop         ; Loop until all elements are processed
    mov sum, al           ; Store the sum in the sum variable
    mov dx, offset result  
    mov ah, 09h            ; DOS function to display string
    int 21h                ; Print the message
    mov al, sum            ; Move the sum to AL
    add al, '0'            
    mov dl, al             
    mov ah, 02h            ; function to display character
    int 21h                ; Print the sum
    mov ah, 4Ch            ; terminate program function
    int 21h
main endp
end main
