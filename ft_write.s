section	.text
	global	_ft_write

_ft_write:
		mov	rax, 0x2000001
		syscall
		ret
