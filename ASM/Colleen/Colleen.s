extern main, printf

;programme Colleen
section .data
	fmt:	db "extern main, printf%1$c%1$c;programme Colleen%1$csection .data%1$c%2$cfmt:%2$cdb %3$c%4$s%3$c, 0%1$c%1$csection .text%1$c%1$cfunction1:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$cmov rdi, fmt%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 34%1$c%2$cmov r8, fmt%1$c%2$ccall printf%1$c%2$cleave%1$c%2$cret%1$c%1$c%1$cmain:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$ccall function1;Call printf%1$c%2$cleave%1$c%2$cret%1$c", 0

section .text

function1:
	push rbp
	mov rbp, rsp
	mov rdi, fmt
	mov rsi, 10
	mov rdx, 9
	mov rcx, 34
	mov r8, fmt
	call printf
	leave
	ret


main:
	push rbp
	mov rbp, rsp
	call function1;Call printf
	leave
	ret
