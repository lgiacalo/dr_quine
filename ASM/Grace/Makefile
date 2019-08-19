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

GRACE			= Grace

################################################################################

CC				= gcc
CFLAGS			= -Wall -Wextra -Werror

COLOR			= \033[31m
FINCOLOR		= \033[0m

SPY				= @

################################################################################

SRC_GRACE      = Grace.s
OBJ_GRACE      = Grace.o

################################################################################

all: $(COLLEEN) $(GRACE) $(SULLY)

$(GRACE): $(OBJ_GRACE)
	$(CC) $(CFLAGS) -o $@ $(OBJ_GRACE)
	$(SPY)echo "$(COLOR)$(GRACE)\t\t\t[OK]$(FINCOLOR)"

clean:
	$(RM) $(OBJ_GRACE)
	$(SPY)echo "$(COLOR)$(GRACE)\t\t\tSuppression *.o$(FINCOLOR)"

fclean: clean
	$(RM) $(GRACE) $(GRACE)_kid.c
	$(SPY)echo "$(COLOR)$(GRACE)\t\t\tSuppression $(GRACE) + $(GRACE)_kid.c$(FINCOLOR)"


re: fclean all

.PHONY : all clean fclean re
