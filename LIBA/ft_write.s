section	.text
	global	_ft_write
	extern	___error

null_handler:
		sub		rsp, 8
		call	___error
		add		rsp, 8
		mov		r15, 22
		mov		[rax], r15
		mov		rax, -1
		ret

_ft_write:
		cmp		rsi, 0
		je		null_handler
		mov 	rax, 0x2000004
        syscall
		jae		ft_ret
		mov		r15, rax
		sub		rsp, 8
		call	___error
		add		rsp, 8
		mov		[rax], r15
		mov		rax, -1
ft_ret:
		ret
