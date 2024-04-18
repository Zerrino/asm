section	.text
	global	_ft_write

_ft_write:
        mov 	rax, 0x2000004
        syscall
		jae		ft_ret
        mov 	rax, -1
ft_ret:
		ret
