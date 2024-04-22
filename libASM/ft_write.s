extern	___error
section	.text
	global	_ft_write

_ft_write:
		mov 	rax, 0x2000004
        syscall
		jae		ft_ret
		call	___error
		mov		rax, -1
		;ret
ft_ret:
		ret
