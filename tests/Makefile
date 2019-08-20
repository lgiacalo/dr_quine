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

EXAMPLE			= example

################################################################################

AS				= nasm
ASFLAGS			= -f macho64 --prefix _ -Wall -Werror

COLOR			= \033[31m
FINCOLOR		= \033[0m

SPY				=

################################################################################

SRC_EXAMPLE      = example.s
OBJ_EXAMPLE      = example.o

################################################################################

all: $(EXAMPLE)

$(EXAMPLE): $(SRC_EXAMPLE) Makefile
	$(SPY) $(AS) $(ASFLAGS) -o example.o example.s
	$(SPY) $(CC) -o $(EXAMPLE) example.o
	$(SPY)echo "$(COLOR)$(EXAMPLE)\t\t\t[OK]$(FINCOLOR)"

clean:
	$(RM) $(OBJ_EXAMPLE)
	$(SPY)echo "$(COLOR)$(EXAMPLE)\t\t\tSuppression *.o$(FINCOLOR)"

fclean: clean
	$(RM) $(EXAMPLE)
	$(SPY)echo "$(COLOR)$(EXAMPLE)\t\t\tSuppression $(EXAMPLE)$(FINCOLOR)"


re: fclean all

.PHONY : all clean fclean re
