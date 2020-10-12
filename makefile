CC=g++
CFLAGS=-std=c++11 -Wall

main.out: Engenheiro.o Vendedor.o main.cpp
	${CC} ${CFLAGS} -o main.out main.cpp Engenheiro.o Vendedor.o Empregado.o

Engenheiro.o: Engenheiro.cpp Engenheiro.hpp Empregado.o
	${CC} ${CFLAGS} -c Engenheiro.cpp

Vendedor.o: Vendedor.cpp Vendedor.hpp Empregado.o
	${CC} ${CFLAGS} -c Vendedor.cpp

Empregado.o: Empregado.cpp Empregado.hpp
	${CC} ${CFLAGS} -c Empregado.cpp

clean:
	rm *.o *.out

test: main.out
	./main.out > saida.txt
	diff saida.txt saida_esperada.txt
	rm saida.txt
