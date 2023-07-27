#include <boost/contract/call_if.hpp>
#include <functional>
#include <iostream>
#include <tuple>
#include <type_traits>

template <typename T, typename CondType, typename... Args>
class BranchChanger {
public:
    using FunctionType = std::function<T(Args...)>;

    BranchChanger(FunctionType func1, FunctionType func2 = nullptr) :
        m_func1(func1),
        m_func2(func2) {}

    T operator()(Args... args) {
        using cond = CondType;

        return boost::contract::call_if<cond>(
            [&]() {
                return std::apply(m_func1, std::make_tuple(args...));
            }).else_(
            [&]() {
                return std::apply(m_func2, std::make_tuple(args...));
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

double increment(double x) {
    return x + 1;
}

double decrement(double x) {
    return x - 1;
}

int main() {
    using two_t = std::integral_constant<int, 2>;
    using four_t = std::integral_constant<int, 4>;
    constexpr bool cond_value = std::is_same<two_t, four_t>::value;
    using cond = std::integral_constant<bool, cond_value>;

    BranchChanger<double, cond, double, double> changer(add, subtract);
    double result = changer(10.5, 5.5);
    std::cout << "Result: " << result << std::endl;

    BranchChanger<double, cond, double> changer2(increment, decrement);
    double result2 = changer2(10.5);
    std::cout << "Result2: " << result2 << std::endl;

    return 0;
}
