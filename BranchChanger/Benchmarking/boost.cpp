#include <boost/contract/call_if.hpp>
#include <functional>
#include <iostream>
#include <type_traits>

template <typename T, typename U>
class BranchChanger {
public:
    using FunctionType = std::function<T(T, U)>;

    BranchChanger(FunctionType func1, FunctionType func2) :
        m_func1(func1),
        m_func2(func2) {}

    template <typename CondType>
    T operator()(T x, U y) const { // Add const qualifier
        return boost::contract::call_if<CondType>(
            [&]() {
                return m_func1(x, y);
            }).else_(
            [&]() {
                return m_func2(x, y);
            });
    }

private:
    FunctionType m_func1;
    FunctionType m_func2;
};

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
   auto start = std::chrono::high_resolution_clock::now();

    constexpr int N = 2;
    BranchChanger<double, double> changer(add, subtract);
    CheckTypes<0, N, decltype(changer)>::check(changer);

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;
    std::cout << "Execution time: " << duration.count() << " seconds" << std::endl;
    // Execution time: 4.8721e-05 seconds
    return 0;
}
