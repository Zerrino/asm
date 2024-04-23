section	.text
	global	_ft_create_elem
	extern	_malloc

_ft_create_elem: ; (void *) rdi
		push	rdi
		mov		rdi, 16
		call	_malloc
		pop		rdi
		cmp		rax, 0
		je		ft_ret
		mov		[rax], rdi
ft_ret:
		ret
