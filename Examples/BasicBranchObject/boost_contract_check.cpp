#include <iostream>
#include <boost/contract.hpp>

// Function that takes an integer and returns the square of that integer
int square(int x)
{
    // Define the contract for this function
    boost::contract::check c1 = boost::contract::function()
        .precondition([&](){
            // Precondition: x must be non-negative
            return x >= 0;
        });

    // Calculate the square of x and return the result
    int result = x * x;

    // // Check the postcondition
    boost::contract::check c2 = boost::contract::function()
        .postcondition([&](){
            // Precondition: x must be non-negative
            return x >= 0;
        });

    return result;
}

int main()
{
    int x = -5;
    int y = square(x);

    // The function call to square(x) will throw an exception because
    // the precondition x >= 0 is violated
    std::cout << "y = " << y << std::endl;

    return 0;
}
