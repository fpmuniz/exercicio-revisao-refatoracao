#include "Empregado.hpp"

double Empregado::pagamentoMes(double horasTrabalhadas) {
	
	//Cálculo de hora extra (+50% se horasTrabalhadas > 8)
	if (horasTrabalhadas > HORAS_UTEIS_POR_DIA) {
		double horasExtras = horasTrabalhadas - HORAS_UTEIS_POR_DIA;
		horasTrabalhadas += horasExtras / 2;
	}
	return horasTrabalhadas * salarioHora;
}
