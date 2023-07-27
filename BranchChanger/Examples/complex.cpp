#include "../BranchChanger.h"
#include <iostream>

double add(double x, double y) {
    return x + y;
}

double subtract(double x, double y) {
    return x - y;
}

template <int i, int N, typename BranchChangerType>
struct CheckTypes {
    static void check(const BranchChangerType& changer) {
        using one_t = std::integral_constant<int, 1>;
        using i_t = std::integral_constant<int, i>;
        constexpr bool cond_value = !std::is_same<one_t, i_t>::value;

        double result = changer.template operator()<std::integral_constant<bool, cond_value>>(10.5, 5.5);
        std::cout << "Result: " << result << std::endl;

        CheckTypes<i + 1, N, BranchChangerType>::check(changer);
    }
};

template <int N, typename BranchChangerType>
struct CheckTypes<N, N, BranchChangerType> {
    static void check(const BranchChangerType& changer) {}  // Base case for recursion
};

int main() {
    constexpr int N = 2;
    BranchChanger<double, double> changer(add, subtract);
    CheckTypes<0, N, decltype(changer)>::check(changer);

    return 0;
}
