#ifndef EMPREGADO_H
#define EMPREGADO_H

#include <string>

class Empregado {
	protected:
		const int MESES_NO_ANO = 12;
		const int HORAS_UTEIS_POR_DIA = 8;

	public:
		double salarioHora;
		std::string nome;

		double pagamentoMes(double horasTrabalhadas);
	
};

#endif