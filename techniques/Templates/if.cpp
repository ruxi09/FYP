#include <cstdio>

void processNumber(int number) {
    if (number > 0) {
        printf("Number is positive.");
    } else {
        printf("Number is not positive.");
    }
}

int main() {
    int number = 10;
    processNumber(number);  
    return 0;
}
