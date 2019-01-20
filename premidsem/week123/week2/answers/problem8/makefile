CC=gcc
DEPS=connect.h
OBJ=  cylinder.o sphere.o circle.o cube.o rectangle.o main.o



main: $(OBJ)
	$(CC) -o $@ $^ -I.

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< -I.

.PHONY: clean

clean:
	rm main *.o
