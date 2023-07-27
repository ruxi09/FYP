#include <functional> // std::function
#include <iostream>

using namespace std;

// Define the function signature for the callable objects.
typedef int (*FunctionType)();

// Define a template class that takes two function pointers as template arguments.
template <FunctionType Func1, FunctionType Func2>
struct Branch{
  // Define a static function that calls one of the two function pointers based on a runtime condition.
  static int Call(bool condition)
  {
      return condition ? Func1() : Func2();
  }
};

int main()
{
  // Define a runtime condition.
  constexpr bool condition = true;

  // Define two callable objects that return an int value.
  auto foo = []() -> int { return 1; };
  auto bar = []() -> int { return 2; };

  // Create a branch object using the Branch template.
  std::function<int(bool)> branch = Branch<foo, bar>::Call;

  // Execute the branch and print the result.
  int result = branch(condition);
  cout << result << endl;

  return 0;
}
