#include "../BranchChanger.h"
#include <iostream>

double add(double x, double y) {
    return x + y;
}

double subtract(double x, double y) {
    return x - y;
}

int main() {
    BranchChanger<double, double> changer(add, subtract);

    // Example for the true branch
    // Should print 16
    double result = changer.operator()<std::integral_constant<bool, true>>(10.5, 5.5);
    std::cout << "Result (cond=true): " << result << std::endl;

    // Example for the false branch
    result = changer.operator()<std::integral_constant<bool, false>>(10.5, 5.5);
    std::cout << "Result (cond=false): " << result << std::endl;


    return 0;
}
