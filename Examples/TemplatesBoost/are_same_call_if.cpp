#include <boost/contract/call_if.hpp>
#include <type_traits> // false_type / true_type
#include <functional> // std::bind for generic lambdas.
#include <iostream>

using namespace std;

template<typename T, typename U>
struct AreSame: std::false_type{};

template<typename T>
struct AreSame<T,T>: std::true_type{};

template<typename TypeN, typename TypeM>
void check_same_type(TypeN& n, TypeM& m) {
    boost::contract::call_if<AreSame<TypeN,TypeM>>(
        std::bind([] (auto true_) {
            cout << true;
        }, std::true_type()) 
    ).else_(
        std::bind([] (auto false_) {
            cout << false;
        }, std::false_type())
    );
}

int main() {
    int32_t x,y;
    char16_t a; 
    check_same_type(x, y);
    check_same_type(x, a);
    return 0;
}
