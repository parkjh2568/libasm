# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: junhypar <junhypar@student.42seoul.kr>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/23 11:14:43 by junhypar          #+#    #+#              #
#    Updated: 2021/02/24 09:39:26 by junhypar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a

SRCS	= ft_strlen.s

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

re:		fclean all
