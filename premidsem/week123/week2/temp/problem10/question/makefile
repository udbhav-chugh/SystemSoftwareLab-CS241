IDIR=../include
LDIR=../include
ODIR=object
CC=gcc
CFLAGS=-I$(IDIR)

RED= \033[1;31m
BLUE= \033[1;34m
YELLOW = \033[1;33m
NC= \033[1;0m

_DEPS=connect.h
DEPS=$(patsubst %, $(IDIR)/%,$(_DEPS))

_OBJ=circle.o rectangle.o sphere.o cube.o main.o
OBJ=$(patsubst %, $(ODIR)/%, $(_OBJ))

output: lol.a sphere.o cube.o main.o $(DEPS)
	$(CC) -o $@ $^ $(CFLAGS)

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 
	@echo "created $*.o"
lol.a: circle.o rectangle.o
	ar rcs lol.a circle.o rectangle.o

libs: lol.a


.PHONY: print clean
 
print:
	@echo "$(YELLOW)$(OBJ)"



clean: 
	rm $(ODIR)/*.o output *.a
