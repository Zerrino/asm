section	.text
	global	_ft_list_sort
;	ft_strcmp (rdi, rsi
;	rdi, rsi
_ft_list_sort:
		mov		rax, 0
		mov		r15, rsi
		mov		r14, [rdi]
		
		mov		r14, [r14 + 8] ; TOUT + 1

		mov		r13, [r14]; 17, START OF ___LIST___
		
		mov		r12, [r14 + 8]; 20 SEC OF ___LIST___
	


		mov		rax, [r12];
		;mov		r13, [r14 + 8];
		;mov		rax, [r13] ; 2
		ret
		call	r15;
		ret
