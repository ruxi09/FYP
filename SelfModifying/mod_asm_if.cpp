#include <stdio.h>

int foo(int a, int b) {
    int result;

    asm volatile (
        "mov %[a], %%eax\n\t"      // Move a to eax
        "mov %[b], %%ebx\n\t"      // Move b to ebx
        "mov $0, %%ecx\n\t"        // Initialize ecx to 0
        "cmp %%ecx, %%eax\n\t"     // Compare eax with ecx
        "jg call_operation\n\t"    // Jump to call_operation if eax > ecx

        // Negate the value in eax
        "neg %%eax\n\t"

        "modify_jg_to_jle:\n\t"
        // Use a register to store the modified condition (0x7E represents the opcode for 'jle')
        "mov $0x7E, %%edx\n\t"
        "cmp %%edx, %%al\n\t"
        "jne operation\n\t"
        "jmp call_operation\n\t"

        "call_operation:\n\t"
        "add %%ebx, %%eax\n\t"
        "jmp operation\n\t"

        "operation:\n\t"
        "add %%ebx, %%eax\n\t"

        : [result] "=a" (result)  // Output operand: result (stored in eax)
        : [a] "r" (a), [b] "r" (b) // Input operands: a and b
        : "%ebx", "%ecx", "%edx"  // Clobbered registers: ebx, ecx, edx
    );

    return result;
}

int main() {
    int a = 3, b = 2;
    printf("result is %d\n", foo(a, b));
    return 0;
}
