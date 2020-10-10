main.out: Engenheiro.o Vendedor.o main.cpp
	g++ -Wall -o main.out main.cpp Engenheiro.o Vendedor.o

Engenheiro.o: Engenheiro.cpp Empregado.hpp
	g++ -Wall -c Engenheiro.cpp

Vendedor.o: Vendedor.cpp Empregado.hpp
	g++ -Wall -c Vendedor.cpp

clean:
	rm *.o *.out
