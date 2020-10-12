CC=g++
CFLAGS=-std=c++11 -Wall

main.out: main.o Engenheiro.o Vendedor.o Empregado.o
	${CC} ${CFLAGS} -o main.out main.o Engenheiro.o Vendedor.o Empregado.o

main.o: main.cpp
	${CC} ${CFLAGS} -c main.cpp

Engenheiro.o: Engenheiro.cpp Engenheiro.hpp
	${CC} ${CFLAGS} -c Engenheiro.cpp

Vendedor.o: Vendedor.cpp Vendedor.hpp
	${CC} ${CFLAGS} -c Vendedor.cpp

Empregado.o: Empregado.cpp Empregado.hpp
	${CC} ${CFLAGS} -c Empregado.cpp

clean:
	rm *.o *.out

test: main.out
	./main.out > saida.txt
	diff saida.txt saida_esperada.txt
	rm saida.txt
