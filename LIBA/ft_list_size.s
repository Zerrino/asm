section	.text
	global	_ft_list_size

;	int	ft_list_size(t_list *begin_list) ; %rdi

_ft_list_size:
		mov		rax, 0
ft_loop:
		cmp		rdi, 0
		je		ft_ret
		inc		rax
		mov		rdi, [rdi + 8]
		jmp		ft_loop
ft_ret:
		ret
