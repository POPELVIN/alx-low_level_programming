section .data
    hello db "Hello, Holberton", 0xA, 0

section .text
    global main
    extern printf

main:
    push rbp
    mov rbp, rsp

    ; Call printf to print the string
    mov edi, hello
    xor eax, eax
    call printf

    ; Clean up the stack and exit the program
    mov rsp, rbp
    pop rbp
    xor eax, eax
    ret
