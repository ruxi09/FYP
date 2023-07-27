#ifndef BRANCHCHANGER_H
#define BRANCHCHANGER_H

#include <boost/contract/call_if.hpp>
#include <functional>
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
#endif // BRANCHCHANGER_H