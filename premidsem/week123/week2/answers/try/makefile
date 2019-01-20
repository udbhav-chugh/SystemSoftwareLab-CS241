CC=gcc

all:
	@for x in 8 9 10 ; do \
	make -C../problem$$x/ -f makefile ; \
	done 

clean: 
	@for x in 8 9 10 ; do \
	make -C../problem$$x/ -f makefile clean; \
	done
target:
ifeq ($(CC),gcc)
	@echo "same"
else
	@echo "not same"
endif

tar:
	@for x in 3 4 5 6 ; do \
	echo $$x ; \
	done


