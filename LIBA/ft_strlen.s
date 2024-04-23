section	.text
	global _ft_strlen

_ft_strlen:
		mov		rax, 0
		cmp		rdi, 0
		je		ft_ret
		cmp		BYTE [rax + rdi], 0
		je		ft_ret
ft_loop:
		inc		rax
		cmp		BYTE [rax + rdi], 0
		jne		ft_loop

ft_ret:
		ret
