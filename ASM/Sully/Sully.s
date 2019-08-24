extern main, dprintf, system

section .data
	fmt:	db "extern main, dprintf, system%1$c%1$csection .data%1$c%2$cfmt:	db %3$c%4$s%3$c, 0%1$c%2$cfilename: db %3$cSully_%5$d.s%3$c, 0%1$c%2$ccmpo: db %3$cnasm -f macho64 --prefix _ -Wall -Werror -o Sully_%5$d.o Sully_%5$d.s%3$c, 0%1$c%2$ccmpp: db %3$ccc -o Sully_%5$d Sully_%5$d.o%3$c, 0%1$c%2$cexecc: db %3$c./Sully_%5$d%3$c, 0%1$c%1$csection .text%1$cleavee:%1$c%2$cleave%1$c%2$cret%1$c%1$cmain:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$cmov	rax, %5$d%1$c%2$csub	rax, 1%1$c%2$cpush rax%1$c%2$cpush rax%1$c%1$c%2$cmov rax, 0x2000005%1$c%2$cmov rdi, filename%1$c%2$cmov rsi, 513%1$c%2$cmov rdx, 0644o%1$c%2$csyscall%1$c%1$c%2$cmov rdi, rax%1$c%2$cmov rsi, fmt%1$c%2$cmov rdx, 10%1$c%2$cmov rcx, 9%1$c%2$cmov r8, 34%1$c%2$cmov r9, fmt%1$c%2$ccall dprintf%1$c%1$c%2$cmov rdi, cmpo%1$c%2$ccall system%1$c%1$c%2$cmov rdi, cmpp%1$c%2$ccall system%1$c%1$c%2$cpop rax%1$c%2$cadd	rax, 1%1$c%2$ccmp	rax, 0%1$c%2$cjle	leavee%1$c%2$cpush rax%1$c%1$c%2$cmov rdi, execc%1$c%2$ccall system%1$c%1$c%2$cjmp leavee%1$c", 0
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
	; mov	rax, 5
	; sub	rax, 1
	; push rax
	; push rax

	mov rax, 0x2000005
	mov rdi, filename
	mov rsi, 513
	mov rdx, 0644o
	syscall

	mov rdi, rax

	mov	rax, 5
	sub	rax, 1
	push rdi
	push rax

	mov rsi, fmt
	mov rdx, 10
	mov rcx, 9
	mov r8, 34
	mov r9, fmt
	call dprintf
	pop rax
	pop rdi

	mov rax, 0x2000006
	syscall

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
