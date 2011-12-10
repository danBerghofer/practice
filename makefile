define CC
	gcc
endef
OPTIONS = -O1
OBJECTS = main.o input.o compute.o
SOURCES = main.c input.c compute.c
HEADERS = main.h input.h compute.h

complete: power clean
	@echo "Build complete" 
power: $(OBJECTS)
	$(CC) $(OPTIONS) -o $@ $^ -lm
	@echo "The executable is in the 'power' file"
main.o: $(HEADERS)
input.o: input.h
compute.o: compute.h
power.tar: makefile $(HEADERS) $(SOURCES)
	tar -cvf $@ $^
clean:
	rm *.o
superclean: 
	rm -f *.o power*
