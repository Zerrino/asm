section	.text
	global	_ft_strcpy

_ft_strcpy:
		mov		rax, 0

ft_loop:
		mov		cl, [rsi + rax]
		cmp		cl, 0
		je		ft_finish	
		mov		[rdi + rax], cl
		inc		rax
		jmp		ft_loop

ft_finish:
		mov		[rdi + rax], cl
		mov		rax, rdi
		ret
