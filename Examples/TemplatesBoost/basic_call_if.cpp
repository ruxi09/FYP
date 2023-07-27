#include <boost/contract/call_if.hpp>
#include <type_traits> // true_type / false_type
#include <iostream>

int main() {
  // Define a function that takes no arguments and returns void
  auto foo = [] () {
    std::cout << "Called foo()" << std::endl;
  };

  // Call foo() if the template type parameter is std::true_type
  boost::contract::call_if<std::true_type>(foo);  // Output: Called foo()
  
  // Call foo() if the template type parameter is std::false_type
  boost::contract::call_if<std::false_type>(foo);  // Output: (nothing)

  return 0;
}
