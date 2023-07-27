#include <cstdio>

#define likely(x)   __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)

int main(int argc, char *argv[]) {
    int a = 5, b;
    if (a % 3 == 0) [[likely]] { // A
        b = 0;
    } else [[likely]] if (a % 3 == 1) [[likely]] { // B
        b = 1;
    } else [[unlikely]] { // C
        b = 2;
    }
}