#include <boost/contract/call_if.hpp>
#include <functional> // std::function
#include <iostream>

using namespace std;

int main() {
    // Define a runtime condition.
    constexpr bool condition = true;

    // Define two callable objects that return an int value.
    auto foo = []() -> int { return 1; };
    auto bar = []() -> int { return 2; };

    // Use boost::contract::call_if to build a branch object.
    // The branch will execute either foo or bar, depending on the value of the condition.
    std::function<int()> branch = boost::contract::call_if<std::true_type>(foo).else_(bar).call_and_return<int>();

    // Execute the branch and print the result.
    int result = branch();
    cout << result << endl;

    return 0;
}
