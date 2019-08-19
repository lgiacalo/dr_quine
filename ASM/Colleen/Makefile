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

COLLEEN			= Colleen

################################################################################

CC				= gcc
CFLAGS			= -Wall -Wextra -Werror

COLOR			= \033[31m
FINCOLOR		= \033[0m

SPY				= @

################################################################################

SRC_COLLEEN      = Colleen.s
OBJ_COLLEEN      = Colleen.o

################################################################################

all: $(COLLEEN) $(COLLEEN) $(SULLY)

$(COLLEEN): $(OBJ_COLLEEN)
	$(CC) $(CFLAGS) -o $@ $(OBJ_COLLEEN)
	$(SPY)echo "$(COLOR)$(COLLEEN)\t\t\t[OK]$(FINCOLOR)"

clean:
	$(RM) $(OBJ_COLLEEN)
	$(SPY)echo "$(COLOR)$(COLLEEN)\t\t\tSuppression *.o$(FINCOLOR)"

fclean: clean
	$(RM) $(COLLEEN)
	$(SPY)echo "$(COLOR)$(COLLEEN)\t\t\tSuppression $(COLLEEN)$(FINCOLOR)"


re: fclean all

.PHONY : all clean fclean re
