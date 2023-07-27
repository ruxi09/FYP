#include <iostream>

using namespace std;

// Define a base class with a virtual function.
class Base{
public:
  virtual int Call() = 0;
};

// Define two derived classes that override the Call function.
class Derived1 : public Base{
public:
  int Call() override { return 1; }
};

class Derived2 : public Base{
public:
  int Call() override { return 2; }
};

int main(){
  // Define a runtime condition.
  constexpr bool condition = true;

  // Create a branch object based on the value of the condition.
  std::unique_ptr<Base> branch;
  if (condition)
    branch = std::make_unique<Derived1>();
  else
    branch = std::make_unique<Derived2>();

  // Execute the branch and print the result.
  int result = branch->Call();
  cout << result << endl;

  return 0;
}
