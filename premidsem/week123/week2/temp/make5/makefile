IDIR =include

CC=gcc

CFLAGS=-I$(IDIR)

ODIR=obj

LDIR =lib
LIBS=-lm

_DEPS = connect.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = circle.o sphere.o rectangle.o cube.o main.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

output: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)



.PHONY: clean
clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~
