extern main, dprintf, system

section .data
	fmt:	db "extern main, printf%1$csection .data%1$cfmt:	db %3$cMERDE%3$c, 0%1$csection .text%1$cfunction1:%1$cpush rbp%1$cmov rbp, rsp%1$cmov rdi, fmt%1$cmov rsi, 10%1$cmov rdx, 9%1$cmov rcx, 34%1$cmov r8, fmt%1$ccall printf%1$cleave%1$cret%1$c%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$ccall function1%1$cleave%1$cret%1$c%1$c", 0
	filename: db "Sully_5.s", 0
	cmpo: db "nasm -f macho64 --prefix _ -Wall -Werror -o Sully_5.o Sully_5.s", 0
	cmpp: db "cc -o Sully_5 Sully_5.o", 0
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

	mov rdi, cmpo
	call system

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
