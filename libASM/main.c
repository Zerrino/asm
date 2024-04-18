/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 09:59:28 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/18 18:48:04 by alexafer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <string.h>
#include <stdio.h>


int  main(int argc, char **argv)
{
	(void)argv;
	(void)argc;
	printf("ft_strcmp : %d\n", ft_strcmp(argv[1], argv[2]));
	printf("strcmp : %d\n", strcmp(argv[1], argv[2]));
 	return (0);
}
