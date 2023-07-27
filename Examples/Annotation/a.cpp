#include <type_traits> // Includes <bits/cpp_type_traits.h>
#include <iostream>

int main() {
  // Declare a runtime condition.
  bool condition = true;

  // Use the likely and unlikely annotations to hint to the compiler about the probability of the condition being true.
  if (__builtin_expect(condition, 1)) {
    // This branch is more likely to be taken.
    std::cout << "Likely branch taken" << std::endl;
  } else {
    // This branch is less likely to be taken.
    std::cout << "Unlikely branch taken" << std::endl;
  }

  return 0;
}
