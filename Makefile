# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: albrusso <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/07 14:16:03 by albrusso          #+#    #+#              #
#    Updated: 2024/10/01 14:47:43 by albrusso         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
#                                  CONFIG                                      #
################################################################################

SERVER	=	server
CLIENT	=	client
CC		=	cc
CFLAGS	=	-Wall -Wall -Wextra
OBJ_DIR	=	.obj
SIZE	=	40

################################################################################
#                                  COLORS                                      #
################################################################################

RED		=	\033[1;31m
YELLOW	=	\033[1;33m
BLUE	=	\033[1;34m
GREEN	=	\033[1;32m
WHITE	=	\033[1;37m
DEFAULT	=	\033[0m

################################################################################
#                                   FILES                                      #
################################################################################
SRC_SERVER	=	libft/mandatory/ft_isalnum.c         \
				libft/mandatory/ft_isprint.c         \
				libft/mandatory/ft_memcmp.c          \
				libft/mandatory/ft_putchar_fd.c      \
				libft/mandatory/ft_split.c           \
				libft/mandatory/ft_strlcat.c         \
				libft/mandatory/ft_strncmp.c         \
				libft/mandatory/ft_substr.c          \
				libft/mandatory/ft_atoi.c            \
				libft/mandatory/ft_isalpha.c         \
				libft/mandatory/ft_itoa.c            \
				libft/mandatory/ft_memcpy.c          \
				libft/mandatory/ft_putendl_fd.c      \
				libft/mandatory/ft_strchr.c          \
				libft/mandatory/ft_strlcpy.c         \
				libft/mandatory/ft_strnstr.c         \
				libft/mandatory/ft_tolower.c         \
				libft/mandatory/ft_bzero.c           \
				libft/mandatory/ft_isascii.c         \
				libft/mandatory/ft_memmove.c         \
				libft/mandatory/ft_putnbr_fd.c       \
				libft/mandatory/ft_strdup.c          \
				libft/mandatory/ft_strlen.c          \
				libft/mandatory/ft_strrchr.c         \
				libft/mandatory/ft_toupper.c         \
				libft/mandatory/ft_calloc.c          \
				libft/mandatory/ft_isdigit.c         \
				libft/mandatory/ft_memchr.c          \
				libft/mandatory/ft_memset.c          \
				libft/mandatory/ft_putstr_fd.c       \
				libft/mandatory/ft_strjoin.c         \
				libft/mandatory/ft_strmapi.c         \
				libft/mandatory/ft_strtrim.c         \
				libft/mandatory/ft_striteri.c        \
				libft/bonus/ft_lstadd_back.c         \
				libft/bonus/ft_lstadd_front.c        \
				libft/bonus/ft_lstclear.c            \
				libft/bonus/ft_lstdelone.c           \
				libft/bonus/ft_lstiter.c             \
				libft/bonus/ft_lstlast.c             \
				libft/bonus/ft_lstnew.c              \
				libft/bonus/ft_lstsize.c             \
				source/server.c

SRC_CLIENT	=	libft/mandatory/ft_isalnum.c         \
				libft/mandatory/ft_isprint.c         \
				libft/mandatory/ft_memcmp.c          \
				libft/mandatory/ft_putchar_fd.c      \
				libft/mandatory/ft_split.c           \
				libft/mandatory/ft_strlcat.c         \
				libft/mandatory/ft_strncmp.c         \
				libft/mandatory/ft_substr.c          \
				libft/mandatory/ft_atoi.c            \
				libft/mandatory/ft_isalpha.c         \
				libft/mandatory/ft_itoa.c            \
				libft/mandatory/ft_memcpy.c          \
				libft/mandatory/ft_putendl_fd.c      \
				libft/mandatory/ft_strchr.c          \
				libft/mandatory/ft_strlcpy.c         \
				libft/mandatory/ft_strnstr.c         \
				libft/mandatory/ft_tolower.c         \
				libft/mandatory/ft_bzero.c           \
				libft/mandatory/ft_isascii.c         \
				libft/mandatory/ft_memmove.c         \
				libft/mandatory/ft_putnbr_fd.c       \
				libft/mandatory/ft_strdup.c          \
				libft/mandatory/ft_strlen.c          \
				libft/mandatory/ft_strrchr.c         \
				libft/mandatory/ft_toupper.c         \
				libft/mandatory/ft_calloc.c          \
				libft/mandatory/ft_isdigit.c         \
				libft/mandatory/ft_memchr.c          \
				libft/mandatory/ft_memset.c          \
				libft/mandatory/ft_putstr_fd.c       \
				libft/mandatory/ft_strjoin.c         \
				libft/mandatory/ft_strmapi.c         \
				libft/mandatory/ft_strtrim.c         \
				libft/mandatory/ft_striteri.c        \
				libft/bonus/ft_lstadd_back.c         \
				libft/bonus/ft_lstadd_front.c        \
				libft/bonus/ft_lstclear.c            \
				libft/bonus/ft_lstdelone.c           \
				libft/bonus/ft_lstiter.c             \
				libft/bonus/ft_lstlast.c             \
				libft/bonus/ft_lstnew.c              \
				libft/bonus/ft_lstsize.c             \
				source/client.c

OBJ_SERVER	=	$(addprefix $(OBJ_DIR)/, $(SRC_SERVER:.c=.o))
OBJ_CLIENT	=	$(addprefix $(OBJ_DIR)/, $(SRC_CLIENT:.c=.o))

################################################################################
#                                   MAKE                                       #
################################################################################

all:	$(SERVER) $(CLIENT)
$(SERVER): $(OBJ_SERVER)
	@$(CC) $(CFLAGS) $(OBJ_SERVER) -o $(SERVER)
$(CLIENT): $(OBJ_CLIENT)
	@$(CC) $(CFLAGS) $(OBJ_CLIENT) -o $(CLIENT)
$(OBJ_DIR)/%.o: %.c | $(OBJ_DIR)
	@printf "$(WHITE)%s$(BLUE)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Compiling... " "$<" "[OK]"
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)/libft/mandatory
	@mkdir -p $(OBJ_DIR)/libft/bonus
	@mkdir -p $(OBJ_DIR)/source

clean:
	@for file in $(OBJ_CLIENT); do \
		printf "$(WHITE)%s$(YELLOW)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Removing...  " "$$file" "[OK]"; \
	done
	@printf "$(WHITE)%s$(YELLOW)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Removing...  " ".obj/source/server.o" "[OK]";
	@rm -f $(OBJ_SERVER)
	@rm -f $(OBJ_CLIENT)
	@rm -rf $(OBJ_DIR)

fclean: clean
	@printf "$(WHITE)%s$(RED)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Removing...  " "$(SERVER)" "[OK]"
	@rm -f $(SERVER)
	@printf "$(WHITE)%s$(RED)%-$(SIZE)s$(GREEN)%s$(DEFAULT)\n" "Removing...  " "$(CLIENT)" "[OK]"
	@rm -f $(CLIENT)

re: fclean all

.PHONY: all clean fclean re
