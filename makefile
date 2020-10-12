CC=g++
CFLAGS=-std=c++11 -Wall

BUILD_DIR=./build
SRC_DIR=./src
INCLUDE_DIR=./include

${BUILD_DIR}/main.out: ${BUILD_DIR}/main.o ${BUILD_DIR}/Engenheiro.o ${BUILD_DIR}/Vendedor.o ${BUILD_DIR}/Empregado.o
	${CC} ${CFLAGS} -I ${INCLUDE_DIR} -o main.out ${BUILD_DIR}/*.o

${BUILD_DIR}/main.o: ${SRC_DIR}/main.cpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR} -c ${SRC_DIR}/main.cpp -o ${BUILD_DIR}/main.o

${BUILD_DIR}/Engenheiro.o: ${SRC_DIR}/Engenheiro.cpp ${INCLUDE_DIR}/Engenheiro.hpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR} -c ${SRC_DIR}/Engenheiro.cpp -o ${BUILD_DIR}/Engenheiro.o

${BUILD_DIR}/Vendedor.o: ${SRC_DIR}/Vendedor.cpp ${INCLUDE_DIR}/Vendedor.hpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR} -c ${SRC_DIR}/Vendedor.cpp -o ${BUILD_DIR}/Vendedor.o

${BUILD_DIR}/Empregado.o: ${SRC_DIR}/Empregado.cpp ${INCLUDE_DIR}/Empregado.hpp
	${CC} ${CFLAGS} -I ${INCLUDE_DIR} -c ${SRC_DIR}/Empregado.cpp -o ${BUILD_DIR}/Empregado.o

clean:
	rm -f ${BUILD_DIR}/*

test: main.out
	./main.out > saida.txt
	diff saida.txt saida_esperada.txt
	rm saida.txt
