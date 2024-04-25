# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alexafer <alexafer@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/23 16:07:48 by alexafer          #+#    #+#              #
#    Updated: 2024/04/23 18:22:33 by alexafer         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
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

BONUS = ft_atoi_base.s\
	   	ft_list_size.s\
	   	ft_create_elem.s\
	   	ft_list_push_front.s\
		ft_list_sort.s

OBJS = $(addprefix $(SRC_DIR)/, $(SRCS:.s=.o))
BONUS_OBJ = $(addprefix $(SRC_DIR)/, $(BONUS:.s=.o))

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $@ $^
	#@make compile

bonus: $(BONUS_OBJ)
	@ar -rcs $(NAME) $^

$(SRC_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) $(NASMFLAGS) -I./. $< -o $@

compile:
	$(CC) $(CFLAGS) -I./. $(MAIN) $(NAME)
	#@./a.out

clean:
	rm -f $(OBJS) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)
	#rm -r a.out

re: fclean all

.PHONY: all clean fclean re bonus
	