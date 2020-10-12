main.out: Engenheiro.o Vendedor.o main.cpp
	g++ -Wall -o main.out main.cpp Engenheiro.o Vendedor.o Empregado.o

Engenheiro.o: Engenheiro.cpp Engenheiro.hpp Empregado.o
	g++ -Wall -c Engenheiro.cpp

Vendedor.o: Vendedor.cpp Vendedor.hpp Empregado.o
	g++ -Wall -c Vendedor.cpp

Empregado.o: Empregado.cpp Empregado.hpp
	g++ -Wall -c Empregado.cpp

clean:
	rm *.o *.out
