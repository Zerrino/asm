/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/23 17:45:53 by alexafer          #+#    #+#             */
/*   Updated: 2024/05/07 06:28:07 by alexafer         ###   ########.fr       */
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

void	ft_remove(void *s)
{
	(*(char *)s) = 'x';
}

int		ft_cmp(void *a, void *b)
{
	(void)a;
	(void)b;
	return (0);
}

int	ft_tester(int a, int b)
{
	return (a - b);
}

int  main(int argc, char **argv)
{
	t_list	*hey;
	t_list	*hey2;

	//char	*a = "3";
	//char	*b = "6";
	//char	*c = "-";
	//char	*d = "5";


	int	i;
	hey = ft_create_elem((void *)argv[argc - 1]);
	i = 1;
	while (argc - i)
	{
		i++;
		ft_list_push_front(&hey, (void *)argv[argc - i]);
	}
	hey2 = hey;
	i = 0;
	while (hey)
	{
		printf("Hey [%d] : %s\n", i, (char *)hey->data);
		hey = hey->next;
		i++;
	}
	hey = hey2;
	printf("ft_list_size : %d\n", ft_list_size(hey));
	//ft_list_sort(&hey, ft_strcmp);	
	printf("nb : %d\n", ft_list_remove_if(&hey, (void *)"avc", ft_cmp, ft_remove));
	printf("After sorting : \n\n");
	hey2 = hey;
	i = 0;
	while (hey)
	{
		printf("Hey [%d] : %s\n", i, (char *)hey->data);
		hey = hey->next;
		i++;
	}
	return (0);
}
