/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 09:59:28 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/19 18:32:08 by alexafer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <string.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int  main(int argc, char **argv)
{
	char	*str;


	(void)argc;
	(void)argv;
	str = (char *)ft_malloc(sizeof(char) * 100);
	
	str[0] = 'h';
	str[1] = 'e';
	str[2] = 'y';
	str[3] = '\n';
	str[4] = '\0';

	ft_write(1, str, ft_strlen(str));
	//free(str);
	ft_write(1, str, ft_strlen(str));
	system("leaks a.out");
	return (0);
}
