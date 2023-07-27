#include <cstdio>

template <bool IsPositive>
void processNumber(int number) {
    if (IsPositive) {
        printf("Number is positive.");
    } else {
        printf("Number is not positive.");
    }
}

int main() {
    int number = 10;
    processNumber<true>(number);  
    return 0;
}
