##
# By Dadivaldo Mendonca
# 2026
##

NAME=main
OBJS = src/ft_strcpy.o src/ft_strlen.o

$(NAME): $(OBJS)
	gcc -g -c src/main.c -o src/main.o -I header
	gcc -g -z noexecstack src/main.o $(OBJS) -o main

src/%.o: src/%.asm
	as -g -o $@ $<

clean:
	rm -fr src/*.o

fclean: clean
	rm -fr main
