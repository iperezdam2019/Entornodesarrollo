CC=gcc
CFLAGS=-Wall -g
calcula: calcula.c calc.o
	$(CC) $(CFLAGS) calcula.c calc.c -o calcula

calc.o: calc.c calc.h
	$(CC) $(CFLAGS) -c calc.c -o calc.o

.PHONY: clean
clean:
	rm -rf *.o	
	rm calcula

.PHONY:dist
dist: clean calcula
	rm -rf ../dist;
	mkdir -p ../Desktop/GitHub/Entornodesarrollo/Unitat4
	cp calcula ../Desktop/GitHub/Entornodesarrollo/Unitat4

.PHONY:targz
targz: clean
	mkdir -p source
	cp *.c *.h Makefile source
	tar -cvf calcula.tar source
	qzip calcula.tar
	rm -rf calcula.tar
	rm -rf source	

install: dist
	cp -r ../dist/*/