section	.text
	global	_ft_list_sort
	extern	_ft_list_size
;	ft_strcmp (rdi, rsi
;	rdi, rsi

_ft_list_sort:
		mov		rax, 0
		mov		r15, rsi
		mov		r8, rdi
		mov		r14, [r8]
		mov		rdi, r14
		;call	_ft_list_size
		;mov		r9, rax ; LEN de lst size
		;cmp		r9, 1
		;je		ft_ret

ft_bigger_loop:
		mov		r14, [r8]
		;cmp		r9, 0
		;je		ft_ret
		;dec		r9
ft_loop:
		mov		r13, r14; 14, START OF ___LIST___
		mov		r12, [r14 + 8]; 20 SEC OF ___LIST___
		jmp		ft_swap
		mov		rdi, r13
		mov		rsi, r12
		;call	r15
		;cmp		rax, 0
ft_here:
		ret
ft_add:
		ret
		mov		r14, [r14 + 8] ; TOUT + 1
		cmp		byte [r14 + 8], 0
		jg		ft_bigger_loop
		jmp		ft_loop

ft_swap:
		mov		r10, [r12]
		mov		r11, [r13]
		mov		[r12], r11
		mov		[r13], r10
		ret
		jmp		ft_here
		ret

ft_ret:
		mov		rax, [r12]
		ret
