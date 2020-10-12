#ifndef VENDEDOR_H
#define VENDEDOR_H

#include "Empregado.hpp"

class Vendedor : public Empregado {

	public:
		double quotaMensalVendas;

		double quotaTotalAnual();

};

#endif