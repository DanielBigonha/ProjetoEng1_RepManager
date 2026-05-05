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

int main() {
    std::cout << "Iniciando Testes Regressivos..." << std::endl;
    testeCalcularFatorial();
    std::cout << "Todos os testes passaram!" << std::endl;
    return 0;
}
