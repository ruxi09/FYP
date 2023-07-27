#include <functional> // std::function
#include <iostream>

using namespace std;

// Define the function signature for the callable objects.
typedef int (*FunctionType)();

// Define a function that takes a runtime condition and two function pointers, and returns a std::function that
// calls one of the two functions based on the value of the condition.
std::function<int()> CreateBranch(bool condition, FunctionType func1, FunctionType func2)
{
    if (condition)
        return std::function<int()>(func1);
    else
        return std::function<int()>(func2);
}

int main()
{
    // Define a runtime condition.
    constexpr bool condition = true;

    // Define two callable objects that return an int value.
    auto foo = []() -> int { return 1; };
    auto bar = []() -> int { return 2; };

    // Create a branch object using the CreateBranch function.
    std::function<int()> branch = CreateBranch(condition, foo, bar);

    // Execute the branch and print the result.
    int result = branch();
    cout << result << endl;

    return 0;
}
