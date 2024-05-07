
section	.text
	global _ft_list_remove_if
	extern _ft_list_size
	extern _free
; ft_list_remove_if (t_list **, void *data_ref, int (*cmp)(), (*free_fct)(void *))
;					rdi, rsi, rdx, rcx

%macro	S_ARGS 0
		push			rdi ; [rsp + 24]  t_list **
		push			rsi ; [rsp + 16]  data_ref
		push			rdx ; [rsp + 8]   int cmp
		push			rcx ; [rsp]       free_fct
%endmacro

%macro	R_ARGS 0
		pop				rcx
		pop				rdx
		pop				rsi
		pop				rdi
%endmacro

%macro SAVE_VARS 0
	push r8					; pushin r8
	push r9					; pushin r9
	sub rsp, 8				; aligning stack
%endmacro

%macro GET_VARS 0
	add rsp, 8				; remove alignment
	pop r9					; poping r9
	pop r8					; poping r8
%endmacro


_ft_list_remove_if:
		S_ARGS
		cmp				[rsp + 24], word 0
		je				ft_ret
		cmp				[rsp + 8], word 0
		je				ft_ret
		cmp				[rsp], word 0
		je				ft_ret
		mov				r8, [rdi]
		mov				r9, 0

ft_loop:
		cmp				r8, 0
		je				ft_ret	
		mov				rdi, [r8]
		mov				rsi, [rsp + 16]
		SAVE_VARS
		call			[rsp + 32]
		GET_VARS
		cmp				rax, 0
		je				ft_remove
		mov				r9, r8
		mov				r8, [r8 + 8]
		jmp				ft_loop


ft_remove:
		cmp				r9, 0
		je				ft_no_p
		mov				r10, [r8 + 8]
		mov				[r9 + 8], r10
		jmp				ft_free_data
ft_no_p:
		mov				r10, [r8 + 8]
		mov				r11, [rsp + 24]
		mov				[r11], r10
		jmp				ft_free_data

ft_free_data:
		mov				rdi, [r8]
		SAVE_VARS
		call			[rsp + 24]
		GET_VARS
		mov				rdi, r8
		mov				r8, [r8 + 8]
		SAVE_VARS
		call			_free
		GET_VARS
		jmp				ft_loop

ft_ret:
		R_ARGS
		ret
