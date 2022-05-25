; x64 Assembly - Hello World

global _start

section .text
_start:
    ; Write hello to stdout
    mov eax, 0x4                ; syscall write
    mov ebx, 1                  ; file descriptor stdout
    mov ecx, greeting           ; message
    ; [len] vs len because we want value not address
    mov edx, dword [len]        ; message length
    int 0x80                    ; syscall write

    ; Exit with return code 0
    mov eax, 0x1                ; syscall exit
    mov ebx, 0x0                ; return value 0
    int 0x80                    ; syscall exit

section .data
    greeting: db "Hello, World!", 0xA
    len: dd 0xe                 ; dd = dword
