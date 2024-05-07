/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main2.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/23 17:45:53 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/30 12:42:34 by alexafer         ###   ########.fr       */
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

int	ft_tester(int a, int b)
{
	return (a > b);
}

int  main(int argc, char **argv)
{
	t_list	*hey;
	t_list	*hey2;

	//char	*a = "3";
	//char	*b = "6";
	//char	*c = "-";
	//char	*d = "5";
	(void)argv;
	(void)argc;
	hey = ft_create_elem((void *)3);
	ft_list_push_front(&hey, (void *)7);
	ft_list_push_front(&hey, (void *)8);
	ft_list_push_front(&hey, (void *)9);
	ft_list_push_front(&hey, (void *)15);
	ft_list_push_front(&hey, (void *)-54);
	ft_list_push_front(&hey, (void *)7);
	printf("ft_list_size : %d\n", ft_list_size(hey));
	int	i;
	i = 0;
	hey2 = hey;
	while (hey)
	{
		printf("Hey [%d] : %d\n", i, (int)hey->data);
		hey = hey->next;
		i++;
	}
	printf("After\n");
	hey = hey2;
	printf("nb : %d\n", ft_list_sort(&hey, ft_tester));
	i = 0;
	while (hey)
	{
		printf("Hey [%d] : %d\n", i, (int)hey->data);
		hey = hey->next;
		i++;
	}
	return (0);
}
