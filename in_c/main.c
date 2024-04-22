/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/22 11:28:44 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/22 11:55:55 by alexafer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_write(int a, char *b, int c)
{
	int	rax_v;

	__asm__(
		".intel_syntax noprefix\n"
		"mov	rax, 0x2000004\n"
		"syscall\n"
		"jae ft_ret\n"
		"mov	rax, -1\n"
		"ft_ret:\n"
		: "=a" (rax_v)
		);
	(void)a;
	(void)b;
	(void)c;
	return (rax_v);
}
