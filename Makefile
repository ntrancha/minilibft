# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/08 10:45:53 by ntrancha          #+#    #+#              #
#    Updated: 2015/08/17 04:16:59 by ntrancha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

AUTEUR = ntrancha

PROJECT = libft

NAME =	$(PROJECT).a

FLAG =	-Wall -Wextra -Werror -g

HEADER = includes/macros.h

GIT =  https://github.com/$(AUTEUR)/

SCRIPT = $(GIT)Script.git 

DEPOT = $(GIT)$(PROJECT).git
	
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

ifeq ($(OS),Windows_NT)
	OS = WIN32
    ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
        SYS = AMD64
    endif
    ifeq ($(PROCESSOR_ARCHITECTURE),x86)
        SYS = IA32
    endif
else
    UNAME_S := $(shell uname -s)
    ifeq ($(UNAME_S),Linux)
        OS = LINUX
    endif
    ifeq ($(UNAME_S),Darwin)
        OS = OSX
    endif
    UNAME_P := $(shell uname -p)
    ifeq ($(UNAME_P),x86_64)
        SYS = AMD64
    endif
    ifneq ($(filter %86,$(UNAME_P)),)
        SYS = IA32
    endif
    ifneq ($(filter arm%,$(UNAME_P)),)
        SYS = ARM
    endif
endif

update:
	@echo "Update ..."
	@git clone $(DEPOT) tmp > /dev/null 2> /dev/null
	@cd tmp/; cp -R * ..; cd ..; rm -rf tmp/
	@echo "Done"

all: reset binaire $(NAME)

$(NAME): $(OBJS)
		@if [ -f '$(NAME)' ]; then \
			error=1; \
			else \
			echo "Compilation [$(NAME)]"; \
			ar rc $@ $^; \
			ranlib $(NAME); \
			echo "Done"; \
		fi

%.o: %.c
		@if [ -f '$(NAME)' ]; then \
			error=1; \
		else \
			gcc $(FLAG) -c -o $@ $^ -fPIC; \
		fi

timestamp:
		@echo `/bin/date "+%s"` > t.nk

.PHONY: verbose quiet clean fclean re install proto reset binaire fichier timestamp test dynamique

dynamique: fclean reset binaire $(OBJS) libso

libso:
	@echo "Compilation [libft.so]";
	@gcc -o libft.so -shared $(OBJS)
	@echo "Done;"
	@rm -rf $(OBJS)

verbose: binaire fichier $(OBJS)
		@if [ -f '$(NAME)' ]; then \
			error=1; \
			else \
			echo "Compilation [$(NAME)]"; \
			ar rc $(NAME) $(OBJS); \
			ranlib $(NAME); \
			echo "Done"; \
		fi

quiet: $(OBJS)
		@if [ -f '$(NAME)' ]; then \
			echo "$(NAME) exists"; \
		else \
			ar rc $(NAME) $^; \
			ranlib $(NAME); \
		fi

clean:
		@rm -rf $(OBJS)

fclean: clean reset
		@rm -rf $(NAME)

re: fclean all

install: timestamp re
		@rm -rf $(OBJS)
		@echo "`/bin/date "+%s"` - `cat t.nk`" > t.nk
		@echo "in `cat t.nk | bc`s"
		@rm -rf t.nk

proto:
		@grep "^[a-z]" *.c | cut -d ":" -f 2
		@echo "total: `ls *.c | wc -l` fonction(s)"

binaire:
		@if [ -f '$(NAME)' ]; then \
    	    echo "$(NAME) exists"; \
		else \
			echo "$(shell echo $(OBJS) | wc -w) files (Flags: $(FLAG)) on $(OS) $(SYS)"; \
			cat $(HEADER) | sed -e "s/OS_UNKNOW/$(OS)/g" > $(HEADER).nk; \
			mv $(HEADER).nk $(HEADER); \
			cat $(HEADER) | sed -e "s/SYS_UNKNOW/$(SYS)/g" > $(HEADER).nk; \
			mv $(HEADER).nk $(HEADER); \
		fi

reset:
		@cat $(HEADER) | sed -e "s/WIN32/OS_UNKNOW/g" > $(HEADER).nk; \
            mv $(HEADER).nk $(HEADER); \
            cat $(HEADER) | sed -e "s/OSX/OS_UNKNOW/g" > $(HEADER).nk; \
            mv $(HEADER).nk $(HEADER); \
            cat $(HEADER) | sed -e "s/LINUX/OS_UNKNOW/g" > $(HEADER).nk; \
            mv $(HEADER).nk $(HEADER);
		@cat $(HEADER) | sed -e "s/IA32/SYS_UNKNOW/g" > $(HEADER).nk; \
            mv $(HEADER).nk $(HEADER); \
            cat $(HEADER) | sed -e "s/AMD64/SYS_UNKNOW/g" > $(HEADER).nk; \
            mv $(HEADER).nk $(HEADER); \
            cat $(HEADER) | sed -e "s/ARM/SYS_UNKNOW/g" > $(HEADER).nk; \
            mv $(HEADER).nk $(HEADER);

fichier:
		@if [ -f '$(NAME)' ]; then \
            error=1 ;\
        else \
			ls -1 *.c > ls.nk; \
			cat ls.nk; \
			rm ls.nk; \
		fi

test: fclean quiet fclean
		@echo "No error"
		@rm -rf $(OBJS)
		@rm -rf $(NAME)
		@git clone $(SCRIPT) script > /dev/null 2> /dev/null
		@python script/norme.py $(FILE)
		@script/./test_header.sh $(FILE)
		@script/./test_file_makefile.sh
		@rm -rf script
