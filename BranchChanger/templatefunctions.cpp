#include <iostream>
#include <type_traits>

template <typename T, typename U, bool CondValue>
struct BranchChanger;

template <typename T, typename U>
struct BranchChanger<T, U, true> {
    static constexpr T select(T x, U y) {
        return x + y;
    }
};

template <typename T, typename U>
struct BranchChanger<T, U, false> {
    static constexpr T select(T x, U y) {
        return x - y;
    }
};

template <typename T, typename U, bool CondValue>
constexpr T getResult(T x, U y) {
    return BranchChanger<T, U, CondValue>::select(x, y);
}

int main() {
    using two_t = std::integral_constant<int, 2>;
    using four_t = std::integral_constant<int, 4>;

    constexpr bool cond_value_false = std::is_same<two_t, four_t>::value;
    constexpr double result_false = getResult<double, double, cond_value_false>(10.5, 5.5);
    std::cout << "Result: " << result_false << std::endl;


    constexpr bool cond_value_true = not std::is_same<two_t, four_t>::value;
    constexpr double result_true = getResult<double, double, cond_value_true>(10.5, 5.5);
    std::cout << "Result: " << result_true << std::endl;

    return 0;
}

/*
  The compiler will only generate the code for the selected function 
  specialization based on the compile-time condition. The unused 
  specialization will not be instantiated or compiled, leading to more
  efficient code generation.
*/