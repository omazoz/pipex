# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: omazoz <omazoz@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/17 15:27:23 by omazoz            #+#    #+#              #
#    Updated: 2022/01/21 15:40:16 by omazoz           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

INCLUDE = pipex.h

SRC = utils_libft.c\
	  utils_libft2.c\
	  check_error.c\
	  pipex.c\
	  utils_pipex.c\
	  ft_split.c

SRC_B = utils_bonus.c\
		pipex_bonus.c\
		utils_libft.c\
		utils_libft2.c\
		check_error.c\
		utils_pipex.c\
		ft_split.c\
		herdoc_utils.c

OBJ = ${SRC:.c=.o}
OBJ_B = ${SRC_B:.c=.o}

CFLAGS = -Wall -Wextra -Werror

BLUE=\033[0;34m

ORANG=\033[0;33m

RESET=\033[0m

CC = cc

all : $(NAME)
	@echo "$(BLUE) \
────────────────────────────────────────────────────────────────────────────\n\
─██████████████─██████████─██████████████─██████████████─████████──████████─\n\
─██░░░░░░░░░░██─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░██──██░░░░██─\n\
─██░░██████░░██─████░░████─██░░██████░░██─██░░██████████─████░░██──██░░████─\n\
─██░░██──██░░██───██░░██───██░░██──██░░██─██░░██───────────██░░░░██░░░░██───\n\
─██░░██████░░██───██░░██───██░░██████░░██─██░░██████████───████░░░░░░████───\n\
─██░░░░░░░░░░██───██░░██───██░░░░░░░░░░██─██░░░░░░░░░░██─────██░░░░░░██─────\n\
─██░░██████████───██░░██───██░░██████████─██░░██████████───████░░░░░░████───\n\
─██░░██───────────██░░██───██░░██─────────██░░██───────────██░░░░██░░░░██───\n\
─██░░██─────────████░░████─██░░██─────────██░░██████████─████░░██──██░░████─\n\
─██░░██─────────██░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░░░██──██░░░░██─\n\
─██████─────────██████████─██████─────────██████████████─████████──████████─\n\
────────────────────────────────────────────────────────────────────────────"

	@echo "             $(ORANG)****************************" 
	@echo "             $(BLUE)*           ^-^             *"
	@echo "             $(ORANG)*  BATMANA_PIPEX IS READY  *"
	@echo "             $(BLUE)*           ^-^             *"
	@echo "             $(ORANG)****************************"
%.o : %.c
	$(CC) -c $< -o $@
$(NAME) : $(OBJ)
			@$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

bonus: $(OBJ_B) $(INCLUDE)
	gcc $(CFLAGS) $(OBJ_B) -o pipex_bonus
	@echo "             $(ORANG)****************************" 
	@echo "             $(BLUE)*           ^-^             *"
	@echo "             $(ORANG)*  BONUS___PIPEX IS READY  *"
	@echo "             $(BLUE)*           ^-^             *"
	@echo "             $(ORANG)****************************"

clean : 
	@rm -f $(OBJ) $(OBJ_B)

fclean : clean 
	@rm -rf $(NAME)

re : fclean all