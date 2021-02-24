# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: junhypar <junhypar@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/23 11:14:43 by junhypar          #+#    #+#              #
#    Updated: 2021/02/24 13:45:12 by junhypar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a

SRCS	= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS	= ${SRCS:.s=.o}

CC		= gcc -Wall -Werror -Wextra

NA		= nasm -f macho64

all:	${NAME}

.s.o:
		${NA} $<

${NAME}: ${OBJS}
			ar rc ${NAME} ${OBJS}

clean:
			rm -f ${OBJS}
		

fclean:	clean
			rm -f ${NAME}
			rm -f libasm

re:		fclean all

test:	re
			@$(RM) libasm
			${CC} main.c libasm.a -o libasm
