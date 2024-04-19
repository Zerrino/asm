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
		ret

