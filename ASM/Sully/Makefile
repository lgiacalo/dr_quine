# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lgiacalo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/22 19:28:04 by lgiacalo          #+#    #+#              #
#    Updated: 2019/08/18 20:56:12 by lgiacalo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SULLY			= Sully

################################################################################

AS				= nasm
ASFLAGS			= -f macho64 --prefix _ -Wall -Werror

COLOR			= \033[31m
FINCOLOR		= \033[0m

SPY				=

################################################################################

SRC_SULLY      = Sully.s
OBJ_SULLY      = Sully.o

################################################################################

all: $(SULLY)

$(SULLY): $(SRC_SULLY) Makefile
	$(SPY) $(AS) $(ASFLAGS) -o Sully.o Sully.s
	$(SPY) $(CC) -o $(SULLY) Sully.o
	$(SPY)echo "$(COLOR)$(SULLY)\t\t\t[OK]$(FINCOLOR)"

clean:
	$(RM) $(OBJ_SULLY)
	$(SPY)echo "$(COLOR)$(SULLY)\t\t\tSuppression *.o$(FINCOLOR)"

fclean: clean
	$(RM) $(SULLY) $(SULLY)_*
	$(SPY)echo "$(COLOR)$(SULLY)\t\t\tSuppression $(SULLY) + $(SULLY)_X$(FINCOLOR)"


re: fclean all

.PHONY : all clean fclean re
