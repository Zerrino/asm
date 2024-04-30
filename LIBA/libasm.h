/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/18 10:00:10 by alexafer          #+#    #+#             */
/*   Updated: 2024/04/30 13:06:52 by alexafer         ###   ########.fr       */
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
void	*ft_malloc(size_t size);

/******************BONUS*****************/
typedef struct	s_list
{
	void			*data;
	struct s_list	*next;
}	t_list;

int		ft_atoi_base(char *, char *);
int		ft_list_size(t_list *);
void	ft_list_push_front(t_list **, void *);
int		ft_list_sort(t_list **, int (*cmp)());
t_list	*ft_create_elem(void *);

#endif

