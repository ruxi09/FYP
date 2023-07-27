#include <vector>
#include <random>     // mt19937 and uniform_int_distribution
#include <algorithm>  // generate
#include <iterator>   // begin, end, and ostream_iterator
#include <functional> // bind


// Function to create a growing array with specified parameters
std::vector<int> create_growing_array(int n, int stride, int input_array_len) {
    std::vector<int> result(n);
    int currentValue = 0;
    for (int i = 0; i < n; i++) {
        result[i] = currentValue;
        currentValue = (currentValue + stride) % input_array_len;
    }
    return result;
}

// Function template to create a random array with specified parameters
template <typename T>
std::vector<T> create_random_array(int n, T min, T max);

// Specialization of create_random_array for integers
template<>
std::vector<int> create_random_array(int n, int min, int max) {
    std::random_device rd;
    std::seed_seq seed{rd(), rd(), rd(), rd(), rd(), rd(), rd(), rd()};
    std::mt19937 eng(seed); // A source of random data

    std::uniform_int_distribution<int> dist(min, max - 1);
    std::vector<int> result(n);

    auto generateRandomValue = [&dist, &eng]() {
        return dist(eng);
    };

    std::generate(begin(result), end(result), generateRandomValue);
    return result;
}

// Specialization of create_random_array for floats
template<>
std::vector<float> create_random_array(int n, float min, float max) {
    std::random_device rd;
    std::seed_seq seed{rd(), rd(), rd(), rd(), rd(), rd(), rd(), rd()};
    std::mt19937 eng(seed); // A source of random data

    std::uniform_real_distribution<float> dist(min, max - 1);
    std::vector<float> result(n);

    auto generateRandomValue = [&dist, &eng]() {
        return dist(eng);
    };

    std::generate(begin(result), end(result), generateRandomValue);
    return result;
}


// Function to generate a random growing array
int generate_random_growing_array(int* array, int len) {
    constexpr int random_array_len = 6;
    int random_array[random_array_len] = {1, 2, 4, 3, 1, 2};
    int j = 0;

    array[0] = 0;
    for (int i = 1; i < len; i++) {
        j = (j + 1) % random_array_len;
        array[i] = array[i - 1] + random_array[j];
    }
    return array[len - 1];
}

// Function to prevent compiler optimizations for escaping a variable
static void escape(void* p) {
  asm volatile ("" : : "g"(p) : "memory");
}

// Function to prevent compiler optimizations for clobbering
static void clobber() {
  asm volatile("" : : : "memory");
}
