# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lualbuqu <lualbuqu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/08 14:51:38 by lualbuqu          #+#    #+#              #
#    Updated: 2024/04/15 16:20:49 by lualbuqu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isalpha ft_isdigit ft_isalnum ft_isascii ft_isprint\
ft_strlen ft_memset ft_memcpy ft_memmove ft_bzero ft_memchr\
ft_memcmp ft_strlcpy ft_strlcat ft_strchr ft_strrchr\
ft_strncmp ft_strnstr ft_atoi ft_toupper ft_tolower\
ft_calloc ft_strdup ft_substr ft_strjoin ft_strtrim ft_split\
ft_itoa ft_strmapi ft_striteri ft_putchar_fd ft_putstr_fd\
ft_putendl_fd ft_putnbr_fd\

BONUS = ft_lstlast ft_lstadd_back ft_lstdelone ft_lstclear\
ft_lstnew ft_lstadd_front ft_lstsize ft_lstiter ft_lstmap\

OBJS = $(SRC:=.o)

BONUS_OBJS = $(BONUS:=.o)

CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
		ar rcs $(NAME) $(OBJS)

bonus: $(NAME) $(BONUS_OBJS)
		ar rcs $(NAME) $(BONUS_OBJS)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
		$(RM) $(NAME)

re: fclean all
