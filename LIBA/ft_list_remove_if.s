
section	.text
	global _ft_list_remove_if

; ft_list_remove_if (t_list **, void *data_ref, int (*cmp)(), (*free_fct)(void *))
;					rdi, rsi, rdx, r10
_ft_list_remove_if:
		mov			r15, rsi
		mov			r14, rdx
		mov			r13, r10

		mov			rax, 68
		ret
