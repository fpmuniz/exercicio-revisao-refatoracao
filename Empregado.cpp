#include "Empregado.hpp"

double Empregado::pagamentoMes(double horasTrabalhadas) {
	
	//Cálculo de hora extra (+50% se horasTrabalhadas > 8)
	if (horasTrabalhadas > 8) {
		double horasExtras = horasTrabalhadas - 8;
		horasTrabalhadas += horasExtras / 2;
	}
	return horasTrabalhadas * salarioHora;
}
