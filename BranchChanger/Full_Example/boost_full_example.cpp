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
    T operator()(T x, U y) const {
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

int main() {
    BranchChanger<double, double> changer(add, subtract);
    double result = changer.operator()<std::integral_constant<bool, true>>(10.5, 5.5);
    std::cout << "Result (cond=true): " << result << std::endl;

    result = changer.operator()<std::integral_constant<bool, false>>(10.5, 5.5);
    std::cout << "Result (cond=false): " << result << std::endl;

    return 0;
}
