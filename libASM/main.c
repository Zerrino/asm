/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 09:59:28 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/19 04:38:13 by alexafer         ###   ########.fr       */
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
	str = (char *)ft_malloc(sizeof(char) * 2);
	if (!str)
		return (0);
	str[0] = 'a';
	str[1] = '\0';
	str[1200000000] = 'a';
	printf("hey : %s\n", str);
	printf("hey : %c\n", str[1200000000]);

	
	return (0);
}
