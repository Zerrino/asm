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

ft_sign_plus:
		inc		rax
		jmp		ft_sign
ft_sign_minus:
		inc		rax
		mov		r15, -1
		imul	r14, r15
		jmp		ft_sign

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
		cmp		BYTE [rdi + rax], 9
		je		ft_base_error
		cmp		BYTE [rdi + rax], 10
		je		ft_base_error
		cmp		BYTE [rdi + rax], 11
		je		ft_base_error
		cmp		BYTE [rdi + rax], 12
		je		ft_base_error
		cmp		BYTE [rdi + rax], 13
		je		ft_base_error
		dec		rax
		jmp		ft_base_spec

ft_same_id:
		dec		rax
		jmp		ft_end_char

ft_twice_char: ; Donc on a R10 et RAX qui sont = ft_strlen donc la len
		mov		rax, r11
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
		cmp		rdi, 0
		je		ft_base_error
		cmp		rsi, 0
		je		ft_base_error
		cmp		BYTE [rdi], 0
		je		ft_base_error
		cmp		BYTE [rsi], 0
		je		ft_base_error
		mov		r9, rdi			; R9 -> char *NB
		mov		rdi, rsi		; RDI -> char *BASE
		call	_ft_strlen		;
		mov		r11, rax		; storer la long dans r11
		cmp		rax, 2			;	
		js		ft_base_error 	; SI len base < 2 go return 0
		jmp		ft_base_spec	; CHECK presence de '+' '-' ou ' '

ft_next:
		call	_ft_strlen
		mov		r10, rax		; On me 0 dans R10 pour faire une double boucle while
		jmp	ft_twice_char

_ft_is_inside:	; regarde si char est dans char *str, si oui return l'index dans str
				; rdi = char, rsi char *, rdx = len
				; return danx rax
				;
		cmp		rdx, -1
		je		ft_inside
		cmp		dil, [rsi + rdx]
		je		ft_inside
		dec		rdx
		jmp		_ft_is_inside


ft_inside:
		mov		rax, rdx
		ret

ft_s_error:
		mov		rax, -1
		ret

_ft_start: ; rdi char *nb, rsi char *base, rdx len, r8b
		mov		r10, 0
ft_s_loop:
		cmp		rdx, r10
		je		ft_s_end
		mov		r8b, [rdi + r10]
		cmp		r8b, ' '
		je		ft_s_inc
		cmp		r8b, 9
		je		ft_s_inc
		cmp		r8b, 10
		je		ft_s_inc
		cmp		r8b, 11
		je		ft_s_inc
		cmp		r8b, 12
		je		ft_s_inc
		cmp		r8b, 13
		je		ft_s_inc
		cmp		r8b, '+'
		je		ft_s_end
		cmp		r8b, '-'
		je		ft_s_end
		mov		r12, rdi
		mov		r13, rdx
		mov		rdx, r11
		mov		dil, r8b
		call	_ft_is_inside
		mov		rdi, r12
		mov		rdx, r13
		cmp		rax, 0
		jns		ft_s_end
		jmp		ft_s_error

ft_s_inc:
		inc		r10
		jmp		ft_s_loop	

ft_s_end:
		mov		rax, r10
		ret

ft_no_err:
		; Donc on arrive ici Sans erreur ! avec R9 -> CHAR *NB, RDI -> *BASE R11 = len base
		mov		rsi, rdi ; on deplace *BASE dans RSI
		mov		rdx, r11 ; la len dans rdx
		mov		rdi, r9
		call	_ft_strlen
		mov		rdx, rax
		call	_ft_start
		cmp		rax, -1
		je		ft_base_error
		; dans rax ducoup y a l'index start
		; dans rdx y a la len de char *NB
		;
		cmp		rax, rdx
		je		ft_base_error ; concretement on regarde si ya  des nb val
		mov		r10, rax
		; rdx = len(char *nb)
		; rsi = * base
		; r11 = len(base)
		; rdi = * nb
		; r10 = index start de * nb
		; _ft_is_inside, rdi = char, rsi = *base,rdx len(base)		
		mov		r12, rdx ; donc mtn r12 = len(nb) et r11 = len(base)
		mov		rdx, r11
		mov		r9, rsi
		mov		r13, 0	; r13 sera le resultat
		mov		r14, 1	; r14 sera le sign
		mov		r15, r13
ft_sign:
		cmp		BYTE [rdi + rax], '+'
		je		ft_sign_plus
		cmp		BYTE [rdi + rax], '-'
		je		ft_sign_minus
		mov		r10, rax; R10 va donc etre l'incr
		mov		r8, rdi ; R8 sera donc * nb
ft_true_loop:
		cmp		r10, r12
		je		ft_is_result
		mov		rdi, [r8 + r10]
		mov		rdx, r11
		call	_ft_is_inside
		cmp		rax, -1
		je		ft_is_result
		mov		r15, r13
		imul	r13, r11
		add		r13, rax
		cmp		r15, r13
		ja		ft_overflow
		inc		r10
		jmp		ft_true_loop

ft_is_result:
		mov		rax, r13
		imul	rax, r14
		ret

ft_overflow:
		mov		rax, r14
		not		rax
		sar		rax, 1
		ret
