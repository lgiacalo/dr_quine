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
GRACE			= Grace
SULLY			= Sully

################################################################################

CC				= gcc
CFLAGS			= -Wall -Wextra -Werror

COLOR			= \033[31m
FINCOLOR		= \033[0m

SPY				= @

################################################################################

SRC_GRACE      = Grace.c
OBJ_GRACE      = Grace.o

SRC_COLLEEN      = Colleen.c
OBJ_COLLEEN      = Colleen.o

SRC_SULLY      = Sully.c
OBJ_SULLY      = Sully.o

################################################################################

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJ_COLLEEN)
	$(CC) $(CFLAGS) -o $@ $(OBJ_COLLEEN)
	$(SPY)echo "$(COLOR)$(COLLEEN)\t\t\t[OK]$(FINCOLOR)"
$(GRACE): $(OBJ_GRACE)
	$(CC) $(CFLAGS) -o $@ $(OBJ_GRACE)
	$(SPY)echo "$(COLOR)$(GRACE)\t\t\t[OK]$(FINCOLOR)"
$(SULLY): $(OBJ_SULLY)
	$(CC) $(CFLAGS) -o $@ $(OBJ_SULLY)
	$(SPY)echo "$(COLOR)$(SULLY)\t\t\t[OK]$(FINCOLOR)"

clean:
	$(RM) $(OBJ_GRACE) $(OBJ_COLLEEN) $(OBJ_SULLY)
	$(SPY)echo "$(COLOR)$(GRACE)\t\t\tSuppression *.o$(FINCOLOR)"
	$(SPY)echo "$(COLOR)$(COLLEEN)\t\t\tSuppression *.o$(FINCOLOR)"
	$(SPY)echo "$(COLOR)$(SULLY)\t\t\tSuppression *.o$(FINCOLOR)"

fclean: clean
	$(RM) $(GRACE) $(GRACE)_kid.c $(COLLEEN) $(SULLY) $(SULLY)_*.c
	$(SPY)echo "$(COLOR)$(GRACE)\t\t\tSuppression $(GRACE) + $(GRACE)_kid.c$(FINCOLOR)"
	$(SPY)echo "$(COLOR)$(COLLEEN)\t\t\tSuppression $(COLLEEN)$(FINCOLOR)"
	$(SPY)echo "$(COLOR)$(SULLY)\t\t\tSuppression $(SULLY) + $(SULLY)_X.c$(FINCOLOR)"


re: fclean all

.PHONY : all clean fclean re
