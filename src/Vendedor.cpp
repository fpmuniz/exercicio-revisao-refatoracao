#include "Vendedor.hpp"

double Vendedor::quotaTotalAnual() {
	return quotaMensalVendas * MESES_NO_ANO;
}
