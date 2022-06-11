; Name:   hello_world.asm
; Author: Arkaprabha Chakraborty
; Date:   11-06-2022

section .text
    global _start

section .data:
    ; some message
    message_1: db "Hello, world!", 0xA
    ; lenght of that message
    length_1 equ $ - message_1
    ; some other message
    message_2: db "By the way, I am actually written in x86 Assembly.", 0xA
    ; length of that other message
    length_2 equ $ - message_2

section .text:

_start:
    ; print our message
    mov eax, 0x4        ; write syscall
    mov ebx, 0x1        ; stdout as the file descriptor
    mov ecx, message_1  ; our message used as the buffer
    mov edx, length_1   ; length of our message
    int 0x80            ; invoke syscall

    ; print that other message
    mov eax, 0x4        ; write syscall
    mov ebx, 0x1        ; stdout as the file descriptor
    mov ecx, message_2  ; our message used as the buffer
    mov edx, length_2   ; length of our message
    int 0x80            ; invoke syscall

    ; exit without making a fuss
    mov eax, 0x1        ; exit syscall
    mov ebx, 0x0        ; status code
    int 0x80            ; invoke syscall
