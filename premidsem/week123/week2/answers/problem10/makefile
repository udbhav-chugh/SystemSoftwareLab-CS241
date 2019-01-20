CC=gcc
CFLAGS=-I

IDIR=./test/macro/libs2/

_DEPS=connect.h
DEPS=$(patsubst %,$(IDIR)%,$(_DEPS))

OBJ1=cylinder.o cube.o sphere.o
OBJ2=rectangle.o circle.o

LIBS=lib1.a lib2.a
MAIN=main.c

lib_driver: $(MAIN) $(LIBS) 
	$(CC) -o $@ $^ $(CFLAGS)$(IDIR)

lib1.a: $(OBJ1)
	ar rcs $@ $^ 

lib2.a: $(OBJ2)
	ar rcs $@ $^

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)$(IDIR)

.PHONY: clean

clean: 
	rm *.o *.a lib_driver
