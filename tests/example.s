;programme Grace
%define str "Grace_kid.c"
%define two 2
%define three 3

extern main, dprintf

section .data
	fmt:	db "fmt = [%1$c] - [%2$c] - [%3$c] - [%4$c] - [%5$c]", 0
	filename: db "Sully_5.c", 0
	cmpp: db "gcc -Wall -Wextra -Werror -o Sully_5 Sully_5.c", 0
	execc: db "./Sully_5", 0

section .text

main:
	push rbp
	mov rbp, rsp

	; mov rax, 0x2000005
	; mov rdi, filename
	; mov rsi, 513
	; mov rdx, 0644o
	; syscall

	; mov rdi, rax
	mov rdi, 1
	mov rsi, fmt
	mov rdx, 65
	mov rcx, 66
	mov r8, 67
	mov r9, 68
	push rax         ; Push any register on stack or use `add rsp, -8` to align parameters
	push 69
	xor rax, rax
; call _dprintf
	call dprintf

	leave
	ret
