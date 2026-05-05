#include <iostream>
#include <cassert>
#include "../src/bib.hpp"

void testeCalcularFatorial() {
    std::cout << "Testando calcularFatorial..." << std::endl;
    assert(calcularFatorial(0) == 1);
    assert(calcularFatorial(1) == 1);
    assert(calcularFatorial(5) == 120);
    assert(calcularFatorial(6) == 720);
    std::cout << "calcularFatorial passou nos testes!" << std::endl;
}

void testeCalcularFibonacci() {
    std::cout << "Testando calcularFibonacci..." << std::endl;
    assert(calcularFibonacci(0) == 0);
    assert(calcularFibonacci(1) == 1);
    assert(calcularFibonacci(5) == 5);
    assert(calcularFibonacci(10) == 55);
    std::cout << "calcularFibonacci passou nos testes!" << std::endl;
}

int main() {
    std::cout << "Iniciando Testes Regressivos..." << std::endl;
    testeCalcularFatorial();
    testeCalcularFibonacci();
    std::cout << "Todos os testes passaram!" << std::endl;
    return 0;
}
