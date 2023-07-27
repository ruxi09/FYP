#include "../BranchChanger.h"
#include <iostream>

int add(int x, int y) {
    return x + y;
}

int subtract(int x, int y) {
    return x - y;
}

int main() {
    BranchChanger<double, double> changer(add, subtract);

    // Example for the true branch
    // Should print 16
    int result = changer.operator()<std::integral_constant<bool, true>>(10, 5);
    std::cout << "Result (cond=true): " << result << std::endl;

    // Example for the false branch
    // Should print 5
    result = changer.operator()<std::integral_constant<bool, false>>(10, 5);
    std::cout << "Result (cond=false): " << result << std::endl;


    return 0;
}
