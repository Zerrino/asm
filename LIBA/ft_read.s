section	.text
	global	_ft_read
	extern	___error

_ft_read:
		mov		rax, 0x2000003
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
