OBJS= sphere.o cube.o rectangle.o circle.o main.o
DEPS=connect.h
output: $(OBJS)
	gcc -o $@ $(OBJS)  $(DEPS)

%.o: %.c $(DEPS)
	gcc -c $*.c
	@echo "$(DEPS)"
clean:
	rm *.o output
