;programme Grace
%define str "Grace_kid.s"
%define two 2
%define three 3

%macro mainn 0
extern main, dprintf

section .data
	fmt:	db ";programme Grace%1$c%%define str %3$cGrace_kid.s%3$c%1$c%%define two 2%1$c%%define three 3%1$c%1$c%%macro mainn 0%1$cextern main, dprintf%1$c%1$csection .data%1$c%2$cfmt:%2$cdb %3$c%4$s%3$c, 0%1$c%2$cfilename: db %3$cGrace_kid.s%3$c, 0%1$c%1$csection .text%1$c%1$cmain:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%1$c%2$cmov rax, 0x2000005%1$c%2$cmov rdi, filename%1$c%2$cmov rsi, 513%1$c%2$cmov rdx, 0644o%1$c%2$csyscall%1$c%1$c%2$cpush rax%1$c%2$cpush rax%1$c%2$cmov rdi, rax%1$c%2$cmov rsi, fmt%1$c%2$cmov rdx, 10%1$c%2$cmov rcx, 9%1$c%2$cmov r8, 34%1$c%2$cmov r9, fmt%1$c%2$ccall dprintf%1$c%1$c%2$cpop rdi%1$c%2$cpop rdi%1$c%2$cmov rax, 0x2000006%1$c%2$csyscall%1$c%1$c%2$cleave%1$c%2$cret%1$c%1$c%%endmacro%1$cmainn%1$c", 0
	filename: db "Grace_kid.s", 0

section .text

main:
	push rbp
	mov rbp, rsp

	mov rax, 0x2000005
	mov rdi, filename
	mov rsi, 513
	mov rdx, 0644o
	syscall

	push rax
	push rax
	mov rdi, rax
	mov rsi, fmt
	mov rdx, 10
	mov rcx, 9
	mov r8, 34
	mov r9, fmt
	call dprintf

	pop rdi
	pop rdi
	mov rax, 0x2000006
	syscall

	leave
	ret

%endmacro
mainn
