;programme Grace
%define str	"Grace_kid.c"
%define	two	2
%define three 3

extern main, dprintf

section .data
	fmt:	db "extern main, printf%1$c%1$c;programme Colleen%1$csection .data%1$c%2$cfmt:%2$cdb %3$c%4$s%3$c, 0%1$c%1$csection .text%1$c%1$cfunction1:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$cmov rdi, fmt%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 34%1$c%2$cmov r8, fmt%1$c%2$ccall printf%1$c%2$cleave%1$c%2$cret%1$c%1$c%1$cmain:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$ccall function1;Call printf%1$c%2$cleave%1$c%2$cret%1$c", 0

	filename: db 'Grace_kid.c', 0

section .text

main:

	push rbp
	mov rbp, rsp

		mov rax, 0x2000005
		mov rdi, filename
		mov rsi, 513
		mov rdx, 0644o
		syscall

		mov rdi, rax
		mov rsi, fmt
		mov rdx, 10
		mov rcx, 9
		mov r8, 34
		mov r9, fmt
		call dprintf

		leave
		ret




; ;programme Grace
; %define str	"Grace_kid.c"
; %define	two	2
; %define three 3
;
; %macro mainn 0
;
; extern main, dprintf
;
; section .data
; 	fmt:	db "extern main, printf%1$c%1$c;programme Colleen%1$csection .data%1$c%2$cfmt:%2$cdb %3$c%4$s%3$c, 0%1$c%1$csection .text%1$c%1$cfunction1:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$cmov rdi, fmt%1$c%2$cmov rsi, 10%1$c%2$cmov rdx, 9%1$c%2$cmov rcx, 34%1$c%2$cmov r8, fmt%1$c%2$ccall printf%1$c%2$cleave%1$c%2$cret%1$c%1$c%1$cmain:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$ccall function1;Call printf%1$c%2$cleave%1$c%2$cret%1$c", 0
;
; 		msg: db 'Hello, world', 0xa
; 		len: equ $ - msg
; 		filename: db 'test.txt', 0
; 		lenfilename: equ $ - filename
; 		fd: dq 0
;
;
; section .text
;
; main:
;
; 	push rbp
; 	mov rbp, rsp
;
; 	; mov rdi, 1
; 	; mov rsi, fmt
; 	; mov rdx, 10
; 	; mov rcx, 9
; 	; mov r8, 34
; 	; mov r9, fmt
; 	; call dprintf
; 	;
; 	; leave
; 	; ret
; 	;
; 	;
;
; 		mov rax, 0x2000002
; 		mov rdi, filename
; 		mov rsi, 0102o     ;O_CREAT, man open
; 		mov rdx, 0666o     ;umode_t
; 		syscall
;
; 		mov [fd], rax
; 		mov rax, 0x2000001         ;system call number (sys_write)
; 		mov rdx, len       ;message length
; 		mov rsi, msg       ;message to write
; 		mov rdi, [fd]      ;file descriptor
; 		syscall            ;call kernel
; 		;
; 		; mov rdi, [fd]
; 		; mov rax, 0x2000003         ;sys_close
; 		; syscall
;
; 		; mov rax, 60        ;system call number (sys_exit)
; 		; syscall            ;call kernel
; 		leave
; 		ret
; 		;
;
; %endmacro
;
; mainn
