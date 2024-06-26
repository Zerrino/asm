/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 10:00:10 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/22 17:30:46 by alexafer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <sys/types.h>
#include <errno.h>
#include <stdlib.h>

ssize_t	ft_write(int, const void *, size_t);
ssize_t	ft_read(int, void *, size_t);
size_t	ft_strlen(const char *);
char	*ft_strcpy(char *, const char *);
char	*ft_strdup(const char *);
int		ft_strcmp(const char *, const char *);
int		ft_atoi_base(char *, char *);
void	*ft_malloc(size_t size);

#endif
