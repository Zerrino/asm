section	.text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_malloc
	extern	_ft_strcpy

_ft_strdup:
		call	_ft_strlen
		;cmp		rax, 1
		;je		ft_small
		inc		rax
ft_small:
		push	rdi
		mov		rdi, rax	
		call	_malloc
		cmp		rax, 0
		je		ft_finish
		pop		r8
		mov		rdi, rax
		mov		rsi, r8
		call	_ft_strcpy
ft_finish:
		ret
