# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmykhail <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/01/04 18:49:20 by kmykhail          #+#    #+#              #
#    Updated: 2018/01/27 19:24:47 by kmykhail         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_itoa_an.c modifier.c ft_atoi_ll.c ft_printf.c un_behavior.c ft_itoa_base.c ft_itoa_ui.c \
		ft_char.c ft_check_str.c pointer.c width_prec.c convert_result_to_flag.c \
		add_flag_to_struct.c printf_helper_1.c printf_helper_width_prec.c printf_helper_str_width_prec.c printf_utf.c \
		convert_helper_1.c convert_helper_2.c printf_helper_2.c printf_helper_3.c mix_helper.c 

FILE_O = objects/*.o

all: $(NAME)

$(NAME): objectdir
	@make -C ft_printf
	@make -C libft
	@ar rc $(NAME) $(FILE_O)

objectdir:
	@mkdir -p objects

clean:
	@make clean -C libft
	@make clean -C ft_printf
	@rm -rf objects

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean all fclean re
