#include "../BranchChanger.h"
#include <iostream>

double add(double x, double y) {
    return x + y;
}

double subtract(double x, double y) {
    return x - y;
}

int main() {
    using two_t = std::integral_constant<int, 2>;
    using four_t = std::integral_constant<int, 4>;

    BranchChanger<double, double> changer(add, subtract);

    // Example for the true branch
    constexpr bool cond_value1 = ! std::is_same<two_t, four_t>::value;

    // Should print 16
    int result = changer.operator()<std::integral_constant<bool, cond_value1>>(10, 5);
    std::cout << "Result (cond=true): " << result << std::endl;

    // Example for the false branch
    constexpr bool cond_value2 = std::is_same<two_t, four_t>::value;
    // Should print 5
    result = changer.operator()<std::integral_constant<bool, cond_value2>>(10, 5);
    std::cout << "Result (cond=false): " << result << std::endl;
    
    return 0;
}
