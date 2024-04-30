section	.text
	global	_ft_list_sort
	extern	_ft_list_size
;	ft_strcmp (rdi, rsi
;	rdi, rsi


_ft_list_sort:
		mov			r15, rsi ; ft_strcmp dans r15
		mov			r12, rdi ; on met la list **lst dans r14
		mov			rdi, [rdi]
		call		_ft_list_size ; on chope la len dans RAX
		mov			r8, rax		; r8 = len lst
		push		r8
		mov			r10, r8
		mov			r9, 0

ft_bigger_loop:
		cmp			r10, 0
		je			ft_ret
		mov			r14, [r12] ; r14 = [*lst]
		mov			r13, [r12] ; r13 = [*lst]
		mov			r14, [r14 + 8]
		pop			r8
		push		r8

ft_loop:
		cmp			r8, 1
		je			ft_bigg
		mov			rdi, [r13]
		mov			rsi, [r14]
		call		r15
		cmp			rax, 0
		jg			ft_swap
ft_after_swap:

		mov			r13, [r13 + 8]
		mov			r14, [r14 + 8] ; r13 = lst->next
		mov			r9, 0
		dec			r8
		jmp			ft_loop
ft_bigg:
		dec			r10
		jmp			ft_bigger_loop

ft_swap:
		mov			rax, [r14]
		mov			r9, [r13]
		mov			[r14], r9
		mov			[r13], rax
		jmp			ft_after_swap

ft_ret:
		pop			rax
		ret
