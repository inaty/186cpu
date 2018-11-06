all:exec.c exec.h simulator.c
	gcc -c bin.c
	gcc -c exec.c
	gcc -c simulator.c
	gcc bin.o exec.o simulator.o -o simulator
clean:
	rm simulator exec.o simulator.o
