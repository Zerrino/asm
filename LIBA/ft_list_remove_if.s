
section	.text
	global _ft_list_remove_if
	extern _ft_list_size

; ft_list_remove_if (t_list **, void *data_ref, int (*cmp)(), (*free_fct)(void *))
;					rdi, rsi, rdx, rcx
_ft_list_remove_if:
		mov			r15, rsi ; data_ref
		mov			r14, rdx ; (*cmp)()
		mov			r13, r10 ; ft_remove
		mov			r12, rdi ; t_list **
		mov			rdi, [rdi]
		call		_ft_list_size
		mov			r11, rax; list_size var baby?!
		mov			r12, [r12]
ft_start:
		cmp			r12, 0
		je			ft_ret
		
		mov			rdi, [r12]
		mov			rsi, r15
		call		r14
		je			ft_rem
ft_aft:
		mov			r12, [r12 + 8]
		dec			r11
		jmp			ft_start

ft_ret:
		mov			rax, r11
		ret
ft_rem:
		mov			rdi, [r12]
		call		rcx
		jmp			ft_aft
		ret
