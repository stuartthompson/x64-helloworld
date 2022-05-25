; x64 Assembly - Hello World

global _start

section .text
_start:
    mov eax, 0x4                ; syscall write
    mov ebx, 1                  ; file descriptor stdout
    mov ecx, greeting           ; buf
    mov edx, greeting_length    ; count
    int 0x80                    ; syscall write

    mov eax, 0x1                ; syscall exit
    mov ebx, 0x0                ; return value 0
    int 0x80                    ; syscall exit

section .data
    greeting: db "Hello, World!", 0xA
    greeting_length equ $-greeting
