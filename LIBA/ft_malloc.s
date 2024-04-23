section	.text
	global	_ft_malloc

_ft_malloc:
		mov		rax, 0x20000C5
		mov		rsi, rdi
		mov		rdi, 0
		mov		rdx, 0x3
		mov		r10, 0x1002
		mov		r8, -1
		mov		r9, 0
		syscall
		cmp		rax, -1
		je		ft_error
		ret
ft_error:
		mov		rax, 0
		ret
