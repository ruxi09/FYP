#include <stdio.h>

int foo(int a, int b) {
    int result;

    asm volatile (
        "cmp %[zero], %[a]\n\t"     // Compare a with zero
        "jle else_block\n\t"        // Jump to else_block if a <= 0

        // If a > 0
        "add %[b], %[a]\n\t"        // Add a and b
        "jmp end\n\t"               // Jump to the end

        "else_block:\n\t"           // Label for the else block
        "neg %[a]\n\t"              // Negate a
        "add %[b], %[a]\n\t"        // Add a and b
        
        "end:\n\t"                  // Label for the end of if statement
        "mov %[a], %[result]\n\t"   // Move the result to the output variable

        : [result] "=r" (result)    // Output operand: result variable
        : [a] "r" (a),              // Input operands: a and b variables
          [b] "r" (b),
          [zero] "r" (0)            // Input operand: zero constant
    );

    return result;
}

int main() {
    int a = -3, b = 2;
    printf("result is %d\n", foo(a, b));
    return 0;
}
