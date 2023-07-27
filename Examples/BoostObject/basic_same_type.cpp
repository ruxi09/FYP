#include <boost/contract/call_if.hpp>
#include <type_traits> // false_type / true_type
#include <functional> // std::function
#include <iostream>

// Define a type trait that is std::true_type if T and U are the same type, and std::false_type otherwise.
template<typename T, typename U>
struct AreSame: std::false_type{};

template<typename T>
struct AreSame<T,T>: std::true_type{};

int main() {
    int x, y;
    char a;

    // Use the boost::contract::call_if function to create a semi-static condition.
    boost::contract::call_if<AreSame<int, char>>([&](){
        // This lambda function will be called if T and U are the same type.
        std::cout << "x and a are the same type." << std::endl;
    });

    boost::contract::call_if<AreSame<int, int>>([&](){
        std::cout << "x and y are the same type." << std::endl;
    });
}
  