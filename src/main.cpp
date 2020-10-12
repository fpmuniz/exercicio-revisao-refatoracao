#include <iostream>
#include "Engenheiro.hpp"
#include "Vendedor.hpp"

int main() {

	Engenheiro eng1;
	eng1.nome = "Joao Snow";
	eng1.salarioHora = 35;
	eng1.projetos = 3; 
	std::cout << "Nome: " << eng1.nome << std::endl;
	std::cout << "Salario Mes: " << eng1.pagamentoMes(9.5) << std::endl;
	std::cout << "Projetos: " << eng1.projetos << std::endl;
	std::cout << std::endl;
	
	Engenheiro eng2;
	eng2.nome = "Daniela Targaryen";
	eng2.salarioHora = 30;
	eng2.projetos = 1; 
	std::cout << "Nome: " << eng2.nome << std::endl;
	std::cout << "Salario Mes: " << eng2.pagamentoMes(8) << std::endl;
	std::cout << "Projetos: " << eng2.projetos << std::endl;  
	std::cout << std::endl;
	
	Engenheiro eng3;
	eng3.nome = "Bruno Stark";
	eng3.salarioHora = 30;
	eng3.projetos = 2; 
	std::cout << "Nome: " << eng3.nome << std::endl;
	std::cout << "Salario Mes: " << eng3.pagamentoMes(8) << std::endl;
	std::cout << "Projetos: " << eng3.projetos << std::endl;  
	std::cout << std::endl;
	
	
	Vendedor vend1;
	vend1.nome = "Tonho Lannister";
	vend1.salarioHora = 20;
	vend1.quotaMensalVendas = 5000;
	
	std::cout << "Nome: " << vend1.nome << std::endl;
	std::cout << "Salario Mes: " << vend1.pagamentoMes(6) << std::endl;  
	std::cout << "Quota vendas: " << vend1.quotaTotalAnual() << std::endl;
	std::cout << std::endl;
	
	Vendedor vend2;
	vend2.nome = "Jose Mormont";
	vend2.salarioHora = 25;
	vend2.quotaMensalVendas = 3000;
	
	std::cout << "Nome: " << vend2.nome << std::endl;
	std::cout << "Salario Mes: " << vend2.pagamentoMes(8) << std::endl;  
	std::cout << "Quota vendas: " << vend2.quotaTotalAnual() << std::endl; 
	std::cout << std::endl;  
	
	Vendedor vend3;
	vend3.nome = "Sonia Stark";
	vend3.salarioHora = 30;
	vend3.quotaMensalVendas = 4000;
	
	std::cout << "Nome: " << vend3.nome << std::endl;
	std::cout << "Salario Mes: " << vend3.pagamentoMes(8) << std::endl;  
	std::cout << "Quota vendas: " << vend3.quotaTotalAnual() << std::endl;  
	
	return 0;	
}