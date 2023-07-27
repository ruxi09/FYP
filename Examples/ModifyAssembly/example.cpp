#include <iostream>

typedef int (*FunctionType)(int, int);

int ModifyBranch(FunctionType func)
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

    // Call the modified function
    return func(1, 2);
}

int Max(int a, int b)
{
    if (a > b)
        return a;
    else
        return b;
}

int main()
{
    // Call the ModifyBranch function with the Max function as an argument
    int result = ModifyBranch(Max);

    std::cout << result << std::endl;

    return 0;
}
