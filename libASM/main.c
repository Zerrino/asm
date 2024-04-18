/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 09:59:28 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/18 12:53:15 by alexafer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>


int  main(int argc, char **argv)
{
	(void)argc;
	printf("ft_strlen : %zu\n", ft_strlen(argv[1]));
 	return (0);
}
