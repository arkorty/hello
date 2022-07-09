; Name:   hello_world.asm
; Author: Arkaprabha Chakraborty
; Date:   11-06-2022

section .text
    global _start

section .data:
    ; some message
    message: db "Hello, world!", 0xA, "By the way, I am actually written in x86 Assembly.", 0xA
    ; lenght of that message
    length equ $ - message

section .text:

_start:
    ; print our message
    mov eax, 0x4        ; write syscall
    mov ebx, 0x1        ; stdout as the file descriptor
    mov ecx, message    ; our message used as the buffer
    mov edx, length     ; length of our message
    int 0x80            ; invoke syscall

    ; exit without making a fuss
    mov eax, 0x1        ; exit syscall
    mov ebx, 0x0        ; status code
    int 0x80            ; invoke syscall
