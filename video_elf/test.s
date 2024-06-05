global	_start


section	.text
_start:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, 0x0A
	mov	rdx, 2
	syscall
	mov	rax, 60
	xor	rdi, rdi
	syscall
