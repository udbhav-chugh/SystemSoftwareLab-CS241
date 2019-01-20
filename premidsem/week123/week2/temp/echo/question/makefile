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

$(ODIR)/%.o: %.c $(DEPS)
ifneq '$(CC)' 'gpc'
	$(CC) -c -o $@ $< $(CFLAGS)
else 
	@echo "lol"

endif
	@echo "created $*.o"

output: $(OBJ) $(DEPS)
	$(CC) -o $@ $^ $(CFLAGS) 
target:
	number=1 ; while [[ $$number -le 10 ]] ; do \
	echo $$number ; \
	((number = number + 1)) ; \
	done

print:
	@echo "$(YELLOW)$(OBJ)"



clean: 
	rm $(ODIR)/*.o output

#target:
#	number=1 ; while [[ $$number -le 10 ]] ; do \
#	echo $$number ; \
#	((number = number + 1)) ; \
#	done
