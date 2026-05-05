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

int calcularFibonacci(int n) {
    if (n < 0) {
        throw std::invalid_argument("Fibonacci de número negativo não existe.");
    }
    if (n == 0) return 0;
    if (n == 1) return 1;
    int a = 0, b = 1, c;
    for (int i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}
