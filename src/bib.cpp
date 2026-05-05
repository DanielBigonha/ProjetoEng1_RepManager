#include "bib.hpp"
#include <stdexcept>

int calcularFatorial(int n) {
    if (n < 0) {
        throw std::invalid_argument("Fatorial de número negativo não existe.");
    }
    if (n == 0 || n == 1) {
        return 1;
    }
    int fat = 1;
    for (int i = 2; i <= n; i++) {
        fat *= i;
    }
    return fat;
}
