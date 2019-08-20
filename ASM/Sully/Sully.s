extern main, dprintf, system

section .data
	fmt:	db "#include<stdio.h>%1$c%1$cint main(void){printf(%3$cmerde [%5$d]\n%3$c);}", 0
	filename: db "Sully_5.c", 0
	cmpp: db "gcc -Wall -Wextra -Werror -o Sully_5 Sully_5.c", 0
	execc: db "./Sully_5", 0

section .text

leavee:
	leave
	ret

main:
	push rbp
	mov rbp, rsp
	mov	rax, 5
	sub	rax, 1
	push rax
	push rax	;5 int i

	mov rax, 0x2000005
	mov rdi, filename
	mov rsi, 513
	mov rdx, 0644o
	syscall

	mov rdi, rax
	mov rsi, fmt
	mov rdx, 10	;1
	mov rcx, 9	;2
	mov r8, 34	;3
	mov r9, fmt	;4
	call dprintf

	mov rdi, cmpp
	call system

	pop rax
	add	rax, 1
	cmp	rax, 0
	jle	leavee
	push rax

	mov rdi, execc
	call system

	jmp leavee
