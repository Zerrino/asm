# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/23 16:07:48 by alexafer          #+#    #+#              #
#    Updated: 2024/04/30 13:41:36 by alexafer         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
MODULE = arch -x86_64
CC = gcc
CFLAGS = -Wall -Wextra -Werror
NASM = nasm
NASMFLAGS = -f macho64
SRC_DIR = .
INC_DIR = .
SRCS =  ft_write.s ft_strlen.s\
	   	ft_strcpy.s ft_strcmp.s\
	   	ft_read.s ft_malloc.s\
	   	ft_strdup.s


MAIN = main.c
MAIN2 = main2.c
BONUS = ft_atoi_base.s\
	   	ft_list_size.s\
	   	ft_create_elem.s\
	   	ft_list_push_front.s\
		ft_list_sort.s\
		ft_list_remove_if.s

OBJS = $(addprefix $(SRC_DIR)/, $(SRCS:.s=.o))
BONUS_OBJ = $(addprefix $(SRC_DIR)/, $(BONUS:.s=.o))

all: $(NAME)

$(NAME): $(OBJS)
	$(MODULE) ar -rcs $@ $^
	#@make compile

bonus: $(BONUS_OBJ)
	$(MODULE) ar -rcs $(NAME) $^

$(SRC_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) $(NASMFLAGS) -I./. $< -o $@

compile:
	$(MODULE) $(CC) $(CFLAGS) -I./. $(MAIN) $(NAME)
	#@./a.out

compile2:
	$(MODULE) $(CC) $(CFLAGS) -I./. $(MAIN2) $(NAME)
	#@./a.out

clean:
	rm -f $(OBJS) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)
	#rm -r a.out

re: fclean all

.PHONY: all clean fclean re bonus
	
