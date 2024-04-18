section	.text
	global	_ft_strcmp

;	rdi str : char *  rsi char *

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
		movzx	rbx, bl
		sub		rax, rbx
		ret
