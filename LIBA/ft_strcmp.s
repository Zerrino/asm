section	.text
	global	_ft_strcmp

_ft_strcmp:
		mov		al, BYTE [rdi]
		mov		bl, BYTE [rsi]
		cmp		al, 0
		je		ft_finish
		cmp		bl, 0
		je		ft_finish
		cmp		al, bl
		jne		ft_finish
		inc		rdi
		inc		rsi
		jmp		_ft_strcmp

ft_finish:
		movzx	rax, al
		movzx	rdx, bl
		sub		rax, rdx
		ret
