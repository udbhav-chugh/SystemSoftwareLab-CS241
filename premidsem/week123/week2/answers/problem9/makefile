CC=gcc
DEPS=connect.h
OBJ=  cylinder.o sphere.o circle.o cube.o rectangle.o main.o

RED=\033[32m


main: $(OBJ)
	$(CC) -o $@ $^ -I.

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< -I.
	@echo "$(RED)$*.c created\033[0m"
	@echo $(OBJ)
	@echo "\033[33m$(CC)"

.PHONY: clean

clean:
	rm main *.o
