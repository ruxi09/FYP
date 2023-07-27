#include <functional>
#include <iostream>

class BranchChanger {
public:
    using FunctionType = std::function<double(double, double)>;

    BranchChanger(FunctionType func1, FunctionType func2) :
        m_func1(func1),
        m_func2(func2) {}

    double operator()(double x, double y, bool condition) const {
        if (condition) {
            return m_func1(x, y);
        } else {
            return m_func2(x, y);
        }
    }

private:
    FunctionType m_func1;
    FunctionType m_func2;
};

double add(double x, double y) {
    return x + y;
}

double subtract(double x, double y) {
    return x - y;
}

template <int i, int N>
struct CheckTypes {
    static void check(const BranchChanger& changer) {
        constexpr bool cond_value = (i != 1);

        double result = changer(10.5, 5.5, cond_value);
        std::cout << "Result: " << result << std::endl;

        CheckTypes<i + 1, N>::check(changer);
    }
};

template <int N>
struct CheckTypes<N, N> {
    static void check(const BranchChanger& changer) {}  // Base case for recursion
};

int main() {
    auto start = std::chrono::high_resolution_clock::now();

    constexpr int N = 2;
    BranchChanger changer(add, subtract);
    CheckTypes<0, N>::check(changer);

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;
    std::cout << "Execution time: " << duration.count() << " seconds" << std::endl;
    // Execution time: 4.4807e-05 seconds
    return 0;
}
