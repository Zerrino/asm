/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/23 17:45:53 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/25 12:51:09 by alexafer         ###   ########.fr       */
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
	return (a - b);
}

int  main(int argc, char **argv)
{
	t_list	*hey;
	char	*a = "Hey!";
	char	*b = "Ho";
	char	*c = "To";
	char	*d = "So";


	hey = ft_create_elem((void *)a);
	ft_list_push_front(&hey, (void *)b);
	ft_list_push_front(&hey, (void *)c);
	ft_list_push_front(&hey, (void *)d);
	printf("%d\n", ft_list_size(hey));
	printf("nb 1: %s\n", (char *)hey->data);
	printf("nb 2: %s\n", (char *)hey->next->data);
	printf("nb 3: %s\n", (char *)hey->next->next->data);
	printf("nb 4: %s\n", (char *)hey->next->next->next->data);
	printf("\n\n\n\n");
	printf("len : %d\n", ft_list_size(hey));
	printf("output : %d\n", ft_list_sort(&hey, ft_strcmp));
	//ft_list_sort(&hey, &ft_strcmp);
	printf("\n\n\n\n");	
	printf("nb 1: %s\n", (char *)hey->data);
	printf("nb 2: %s\n", (char *)hey->next->data);
	printf("nb 3: %s\n", (char *)hey->next->next->data);
	printf("nb 4: %s\n", (char *)hey->next->next->next->data);
	(void)argc;
	(void)argv;
	return (0);
}
