#include <iostream>

/*
    First try to write the assembly code for the following C code:

    int a = 4;
    int b;
    if (a < 5){
        b = 1;
    } else{
        b = 2;
    }
*/
int main() {
    int a = 4;
    int b;

    asm volatile (
        "mov %[a], %%eax\n\t"      // Move a to eax
        "cmp $5, %%eax\n\t"        // Compare eax with 5
        "jl if_block\n\t"          // Jump to if_block if less than
        "mov $2, %[b]\n\t"         // Set b to 2 (else block)
        "jmp if_end\n\t"           // Jump to if_end
        "if_block:\n\t"            // Label for the if block
        "mov $1, %[b]\n\t"         // Set b to 1 (if block)
        "if_end:\n\t"              // Label for the end of if statement
        : [b] "=r" (b)             // Output operand: b variable
        : [a] "r" (a)              // Input operand: a variable
        : "%eax"                   // Clobbered register: eax
    );

    std::cout << "Value of b: " << b << std::endl;

    return 0;
}
