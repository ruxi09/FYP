#include "BranchChanger.h"
#include <iostream>

double add(double x, double y) {
    return x + y;
}

double subtract(double x, double y) {
    return x - y;
}

int main() {
    BranchChanger<double, double> changer(add, subtract);
    double result = changer.operator()<std::integral_constant<bool, true>>(10.5, 5.5);
    std::cout << "Result (cond=true): " << result << std::endl;

    result = changer.operator()<std::integral_constant<bool, false>>(10.5, 5.5);
    std::cout << "Result (cond=false): " << result << std::endl;

    return 0;
}
