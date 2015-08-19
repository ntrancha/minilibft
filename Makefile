# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/08 10:45:53 by ntrancha          #+#    #+#              #
#    Updated: 2015/08/18 22:36:28 by ntrancha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libft.a

FLAG =	-Wall -Wextra -Werror

OBJS =	$(FILE:.c=.o)

FILE =	../minilibft/src/mem/ft_memchr.c\
		../minilibft/src/mem/ft_memcpy.c\
		../minilibft/src/mem/ft_memccpy.c\
		../minilibft/src/mem/ft_memmove.c\
		../minilibft/src/mem/ft_ralloc.c\
		../minilibft/src/mem/ft_memset.c\
		../minilibft/src/mem/ft_bzero.c\
		../minilibft/src/mem/ft_memalloc.c\
		../minilibft/src/mem/ft_memdel.c\
		../minilibft/src/mem/ft_memcmp.c\
		../minilibft/src/strings/ft_strequ.c\
		../minilibft/src/strings/ft_strnequ.c\
		../minilibft/src/strings/ft_strcmp.c\
		../minilibft/src/strings/ft_strncmp.c\
		../minilibft/src/strings/ft_strdel.c\
		../minilibft/src/strings/ft_tabstrdel.c\
		../minilibft/src/strings/ft_strnew.c\
		../minilibft/src/strings/ft_striter.c\
		../minilibft/src/strings/ft_striteri.c\
		../minilibft/src/strings/ft_strmap.c\
		../minilibft/src/strings/ft_strmapi.c\
		../minilibft/src/strings/ft_strcchr.c\
		../minilibft/src/strings/ft_match.c\
		../minilibft/src/strings/ft_strchr.c\
		../minilibft/src/strings/ft_strrchr.c\
		../minilibft/src/strings/ft_strstr.c\
		../minilibft/src/strings/ft_strnstr.c\
		../minilibft/src/strings/ft_strdup.c\
		../minilibft/src/strings/ft_strcpy.c\
		../minilibft/src/strings/ft_strncpy.c\
		../minilibft/src/strings/ft_strmore.c\
		../minilibft/src/strings/ft_strlcat.c\
		../minilibft/src/strings/ft_strcat.c\
		../minilibft/src/strings/ft_strncat.c\
		../minilibft/src/strings/ft_strjoin.c\
		../minilibft/src/strings/ft_strmjoin.c\
		../minilibft/src/strings/ft_straddchar.c\
		../minilibft/src/strings/ft_strfusion.c\
		../minilibft/src/strings/ft_strfusiondel.c\
		../minilibft/src/strings/ft_strtrim.c\
		../minilibft/src/strings/ft_strcleanback.c\
		../minilibft/src/strings/ft_strcleanfront.c\
		../minilibft/src/strings/ft_strclr.c\
		../minilibft/src/strings/ft_strtoupper.c\
		../minilibft/src/strings/ft_strtolower.c\
		../minilibft/src/strings/ft_toupper.c\
		../minilibft/src/strings/ft_tolower.c\
		../minilibft/src/strings/ft_strnrpl.c\
		../minilibft/src/strings/ft_strralloc.c\
		../minilibft/src/strings/ft_strsplit.c\
		../minilibft/src/strings/ft_strsub.c\
		../minilibft/src/strings/ft_strrvs.c\
		../minilibft/src/strings/ft_strdoublon.c\
		../minilibft/src/strings/ft_strisnum.c\
		../minilibft/src/strings/ft_strgetline.c\
		../minilibft/src/test/ft_isdigit.c\
		../minilibft/src/test/ft_isalpha.c\
		../minilibft/src/test/ft_isalnum.c\
		../minilibft/src/test/ft_isascii.c\
		../minilibft/src/test/ft_isprint.c\
		../minilibft/src/test/ft_istolower.c\
		../minilibft/src/test/ft_istoupper.c\
		../minilibft/src/test/ft_isspace.c\
		../minilibft/src/test/ft_is_prime.c\
		../minilibft/src/math/ft_abs.c\
		../minilibft/src/math/ft_find_next_prime.c\
		../minilibft/src/math/ft_neg.c\
		../minilibft/src/math/ft_power.c\
		../minilibft/src/math/ft_sqrt.c\
		../minilibft/src/math/ft_facto.c\
		../minilibft/src/math/ft_abs_long.c\
		../minilibft/src/math/ft_neg_long.c\
		../minilibft/src/math/ft_abs_longlong.c\
		../minilibft/src/math/ft_abs_float.c\
		../minilibft/src/math/ft_neg_float.c\
		../minilibft/src/math/ft_rsqrt.c\
		../minilibft/src/math/ft_cos.c\
		../minilibft/src/math/ft_sin.c\
		../minilibft/src/math/ft_tan.c\
		../minilibft/src/math/ft_abs_double.c\
		../minilibft/src/math/ft_neg_double.c\
		../minilibft/src/math/ft_nbrcat.c\
		../minilibft/src/bag/ft_bag_create.c\
		../minilibft/src/bag/ft_bag_addvar.c\
		../minilibft/src/bag/ft_bag_delvar.c\
		../minilibft/src/bag/ft_bag_delnode.c\
		../minilibft/src/bag/ft_bag_del.c\
		../minilibft/src/bag/ft_bag_content.c\
		../minilibft/src/count/ft_strlen.c\
		../minilibft/src/count/ft_nbrlen.c\
		../minilibft/src/count/ft_floatlenfloat.c\
		../minilibft/src/count/ft_floatlen.c\
		../minilibft/src/count/ft_doublelen.c\
		../minilibft/src/count/ft_doublelendouble.c\
		../minilibft/src/count/ft_cinstr.c\
		../minilibft/src/date/ft_date_convert.c\
		../minilibft/src/date/ft_date_modiftime.c\
		../minilibft/src/date/ft_date_modifdate.c\
		../minilibft/src/date/ft_date_summertime.c\
		../minilibft/src/date/ft_date_diny.c\
		../minilibft/src/date/ft_date_mtos.c\
		../minilibft/src/date/ft_date_htos.c\
		../minilibft/src/date/ft_date_dtos.c\
		../minilibft/src/date/ft_date_timestamp.c\
		../minilibft/src/date/ft_timestamp.c\
		../minilibft/src/extra/ft_rgb.c\
		../minilibft/src/extra/ft_getcol.c\
		../minilibft/src/extra/ft_getrow.c\
		../minilibft/src/extra/ft_getpid.c\

$(NAME): $(OBJS)
	@ar rc $@ $^
	@ranlib $(NAME)

%.o: %.c
	@gcc $(FLAG) -c -o $@ $^

.PHONY: clean fclean re

clean:
		@rm -rf $(OBJS)

fclean: clean 
		@rm -rf $(NAME)

re: fclean $(NAME)
