section	.text
	global	_ft_list_push_front
	extern	_ft_create_elem

ft_null:
		mov		rax, 0
		ret

_ft_list_push_front:; (t_list **rdi, void *rsi)
		cmp		rdi, 0
		je		ft_null
		push	rdi
		mov		rdi, rsi
		call	_ft_create_elem
		pop		rdi
		cmp		rax, 0
		je		ft_null
		mov		r15, [rdi]
		mov		[rdi], rax
		mov		[rax + 8], r15
		ret
