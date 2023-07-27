#include <cstdio>

#define likely(x)   __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)

int main(int argc, char *argv[]) {
    if (unlikely(argc > 0)) {
        printf ("1");
    } else {
        printf ("0");
    }
    return 0;
}