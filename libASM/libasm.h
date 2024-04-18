/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 10:00:10 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/18 12:58:44 by alexafer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <sys/types.h>

ssize_t	ft_write(int, const void *, size_t);
size_t	ft_strlen(const char *);
char	*ft_strcpy(char *, const char *);

#endif
