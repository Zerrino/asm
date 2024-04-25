section	.text
	global	_ft_list_sort
	extern	_ft_list_size
;	ft_strcmp (rdi, rsi
;	rdi, rsi

_ft_list_sort:
		mov		rax, 0
		mov		r15, rsi ; ft_strcmp dans r15
		mov		r8, [rdi] ; on met la lst dans r8

		mov		rdi, r8 ; on remet list dans rdi pour lst size
		

		call	_ft_list_size
		;mov		r9, rax ; LEN de lst size
		;mov		rcx, rax ; rcp len const
		;dec		rcx
		;cmp		r9, 2
		;js		ft_ret




ft_swap:
		;mov		r10, r12
		;mov		r11, r13
		;mov		r12, r11
		;mov		r13, r10
		ret
ft_ret:	
		;mov		r8, [r8]
		;mov		rax, r8
		mov			rax, 0
		ret
