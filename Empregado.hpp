#ifndef EMPREGADO_H
#define EMPREGADO_H

#include <string>

class Empregado {

	public:
		double salarioHora;
		double quotaMensalVendas;
		std::string nome;

		double pagamentoMes(double horasTrabalhadas);
	
};

#endif