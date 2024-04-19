section	.text
	global	_ft_read

_ft_read:
		mov		rax, 0x2000003
		syscall
		jae		ft_ret
		mov		rax, -1
ft_ret:
		ret
