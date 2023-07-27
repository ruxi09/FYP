#include <iostream>

using namespace std;

template <int a>
struct isodd {
    static constexpr bool value = a % 2;
};

template <int a>
struct iseven {
    static constexpr bool value = !(a % 2);
};

template <int a>
struct square {
    static constexpr int value = a * a;
};

int main() {
    auto r1 = iseven< square< 4 >::value >::value;
    auto r2 = isodd< square< 2 >::value >::value;

    cout << r1 << endl;
    cout << r2 << endl;
    return 0;
}