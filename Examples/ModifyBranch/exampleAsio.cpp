#include <boost/asio.hpp>
#include <iostream>

typedef int (*FunctionType)(int, int);

class ModifyBranch
{
public:
    ModifyBranch(FunctionType func)
    {
        // Use inline assembly to modify the assembly code of a conditional branch statement in the function
        asm volatile (
            "mov %0, %%eax\n\t"   // Load the function address into EAX
            "mov (%%eax), %%eax\n\t" // Load the first instruction of the function into EAX
            "xor $0x01, %%al\n\t" // Toggle the LSB of the first instruction
            "mov %%eax, (%%eax)\n\t" // Store the modified instruction back into the function
            :                     // No output
            : "r" (func)          // Input: function pointer
            : "%eax"              // Clobbered register: EAX
        );
    }

    int operator()(int a, int b)
    {
        // Call the modified function
        return m_func(a, b);
    }

private:
    FunctionType m_func;
};

int Max(int a, int b)
{
    if (a > b)
        return a;
    else
        return b;
}

int main()
{
    boost::asio::io_context io_context;
    ModifyBranch modify_branch(Max);

    int result = Max(1, 2);
    std::cout << result << std::endl;

    // Use the Boost.Asio call_if function to call the modified function
    // boost::contract::call_if(modify_branch, 1, 2);

    return 0;
}
