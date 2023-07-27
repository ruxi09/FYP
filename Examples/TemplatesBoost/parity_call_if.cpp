#include <boost/contract/call_if.hpp>
#include <type_traits>
#include <iterator>
#include <functional> // std::bind for generic lambdas.
#include <vector>
#include <list>
#include <sstream>

template <int a>
struct isodd {
    static constexpr bool value = a % 2;
};

template <int a>
struct iseven {
    static constexpr bool value = !(a % 2);
};

template <int a>
struct square {
    static constexpr int value = a * a;
};

template<typename Val>
void check_square_parity(Val& n) {
    boost::contract::call_if<iseven<Val>>(
        std::bind([] (auto true_) {
            static_assert(true_, "is_odd");
        }, std::true_type()) 
    ).else_(
        std::bind([] (auto false_) {
            static_assert(false_, "is_odd");
        }, std::false_type()) // Use constexpr value.
    );
}

int main() {
    int32_t x,y;
    x = 9;  
    check_square_parity(x);
    return 0;
}
