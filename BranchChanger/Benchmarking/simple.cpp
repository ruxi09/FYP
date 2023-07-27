#include <functional>
#include <iostream>
#include <chrono>

double add(double x, double y) {
    return x + y;
}

double subtract(double x, double y) {
    return x - y;
}

template <int i, int N>
struct CheckTypes {
    static void check(const std::function<double(double, double)>& func1, const std::function<double(double, double)>& func2) {
        constexpr bool cond_value = (i != 1);

        double result;
        if (cond_value) {
            result = func1(10.5, 5.5);
        } else {
            result = func2(10.5, 5.5);
        }

        std::cout << "Result: " << result << std::endl;

        CheckTypes<i + 1, N>::check(func1, func2);
    }
};

template <int N>
struct CheckTypes<N, N> {
    static void check(const std::function<double(double, double)>& func1, const std::function<double(double, double)>& func2) {}  // Base case for recursion
};

int main() {
    auto start = std::chrono::high_resolution_clock::now();

    constexpr int N = 2;
    CheckTypes<0, N>::check(add, subtract);

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;
    std::cout << "Execution time: " << duration.count() << " seconds" << std::endl;
    // Execution time: 4.4709e-05 seconds
    return 0;
}
