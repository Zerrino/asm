; **************************************************************************** 
;                                                                              
;                                                         :::      ::::::::    
;    ft_atoi_base.s                                     :+:      :+:    :+:    
;                                                     +:+ +:+         +:+      
;    By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+         
;                                                 +#+#+#+#+#+   +#+            
;    Created: 2024/04/19 11:28:12 by alexafer          #+#    #+#              
;    Updated: 2024/04/19 11:31:18 by alexafer         ###   ########.fr        
;                                                                              
; **************************************************************************** 

section	.text
	global	_ft_atoi_base
	extern	_ft_strlen

;	ft_atoi_base(char *RDI, char *RSI)
;	r8
;	r9
;	r10

ft_base_error:
		mov		rax, 0
		ret

ft_base_spec:
		cmp		rax, -1
		je		ft_next
		cmp		BYTE [rdi + rax], '+'
		je		ft_base_error
		cmp		BYTE [rdi + rax], '-'
		je		ft_base_error
		cmp		BYTE [rdi + rax], ' '
		je		ft_base_error
		dec		rax
		jmp		ft_base_spec

ft_same_id:
		dec		rax
		jmp		ft_end_char

ft_twice_char: ; Donc on a R10 et RAX qui sont = ft_strlen donc la len
		call	_ft_strlen
		cmp		r10, -1
		je		ft_no_err
ft_loop_char:
		cmp		rax, -1
		je		ft_end_char
		cmp		rax, r10
		je		ft_same_id
		mov		bl, [rdi + r10]
		cmp		BYTE [rdi + rax], bl
		je		ft_base_error
		dec		rax
		jmp		ft_loop_char
ft_end_char:
		dec		r10
		jmp		ft_twice_char
		ret
	
_ft_atoi_base:
		mov		r9, rdi			; R9 -> char *NB
		mov		rdi, rsi		; RDI -> char *BASE
		call	_ft_strlen		;
		cmp		rax, 2			;	
		js		ft_base_error 	; SI len base < 2 go return 0
		jmp		ft_base_spec	; CHECK presence de '+' '-' ou ' '

ft_next:
		call	_ft_strlen
		mov		r10, rax		; On me 0 dans R10 pour faire une double boucle while
		jmp	ft_twice_char

ft_no_err:
		; Donc on arrive ici Sans erreur !
		ret
