/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/23 17:45:53 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/23 19:51:22 by alexafer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int  main(int argc, char **argv)
{
	int		a_;
	int		b_;
	int		c_;
	int		*a;
	int		*c;
	int		*b;
	t_list	*hey;

	b_ = 14;
	c_ = 17;
	a_ = 20;


	a = &a_;
	b = &b_;
	c = &c_;

	hey = ft_create_elem((void *)a);
	ft_list_push_front(&hey, (void *)b);
	ft_list_push_front(&hey, (void *)c);
	printf("%d\n", ft_list_size(hey));
	printf("nb 1: %d\n", *(int *)hey->data);
	printf("nb 2: %d\n", *(int *)hey->next->data);
	printf("nb 3: %d\n", *(int *)hey->next->next->data);
	
	printf("\n\n\n\n");
	printf("nb 1: %d\n", *(int *)hey->data);
	printf("nb 2: %d\n", *(int *)hey->next->data);
	printf("nb 3: %d\n", *(int *)hey->next->next->data);
	(void)argc;
	(void)argv;
	return (0);
}
