section	.text
	global	_ft_list_sort
	extern	_ft_list_size
;	ft_strcmp (rdi, rsi
;	rdi, rsi


_ft_list_sort:
		mov			r15, rsi ; ft_strcmp dans r15
		mov			r14, rdi ; on met la list **lst dans r14
		mov			rdi, [r14] ; *lst dans rdi
		call	_ft_list_size ; on chope la len dans RAX
		mov		r8, rax		; r8 = len lst


		mov			r14, [r14] ; *lst = r14




		ret
