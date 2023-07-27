#include "utils.h"
#include "measure_time.h"
#include "argparse.h"

typedef int even_t(int* array, int n, int limit);

// Count no even elements in the array
// uses conditional branch
__attribute__ ((optimize(FUNC_OPT)))
int basic_even(int* arr, int n, int limit) {
    int ct = 0, i = 0;
    while (i < n){
        if (arr[i] % 2 == 0) {
            ct++;
        }
        i++;
    }
    return ct;
}

// Count no even elements in the array
// branches were removed
__attribute__ ((optimize(FUNC_OPT)))
int branchless_even(int* arr, int n, int limit) {
    int ct[] = { 0, 0 };
    int i = 0;
    while (i < n){
        ct[arr[i] % 2 == 0]++;
        i++;
    }
    return ct[1];
}

// Count no even elements in the array
// uses arithmetics
__attribute__ ((optimize(FUNC_OPT)))
int arithmetic_even(int* arr, int n, int limit) {
    int ct = 0;
    int i = 0;
    while (i < n){
        ct += (arr[i] % 2 == 0);
        i++;
    }
    return ct;
}

// Count no even elements in the array
// uses CMOV
__attribute__ ((optimize(FUNC_OPT)))
int cmove_even(int* arr, int n, int limit) {
    int ct = 0, i = 0, new_ct;
    while (i < n){
        new_ct = ct + 1;
#if defined(__MIPSEL)
        __asm__ (
            "sub $8, %[arr_i], %[limit];"
            "sra $8, $8, 31;"
            "movz %[ct], %[new_ct], $8;"
                : [ct] "+&r"(ct)
            : [arr_i] "r"(arr[i]), [new_ct] "r"(new_ct), [limit] "r"(limit)
            : "cc", "$8"
            );
#elif defined(__x86_64)
        __asm__ (
            "cmp %[arr_i], %[limit];"
            "cmovbe %[new_ct], %[ct];"
	        : [ct] "+&r"(ct)
            : [arr_i] "g"(arr[i]), [new_ct] "g"(new_ct), [limit] "r"(limit)
            : "cc"
	    );
#else
#error Unimplemented cmov
#endif
        i++;
    }
    return ct;
}

#define likely(x)       __builtin_expect(!!(x),1)
#define unlikely(x)     __builtin_expect(!!(x),0)

// Count no even elements in the array
// uses likely
int likely_even(int* arr, int n, int limit) {
    int ct = 0, i = 0;
    while (i < n){
        if (likely(arr[i] % 2 == 0)) {
            ct++;
        }
        i++;
    }
    return ct;
}

// Count no even elements in the array
// uses unlikely
int unlikely_even(int* arr, int n, int limit) {
    int ct = 0, i = 0;
    while (i < n){
        if (unlikely(arr[i] % 2 == 0)) {
            ct++;
        }
        i++;
    }
    return ct;
}


using namespace argparse;

int main(int argc, const char** argv) {
    even_t* count_func = nullptr;
    std::string count_func_name;

    int searches = 500;
    int arr_len = 10000000;
    float condition = 0.5;

    std::vector<std::pair<std::string, even_t*>> count_funcs = {
         { "basic", basic_even },
         { "cmov", cmove_even},
         { "arithmetic", arithmetic_even },
         { "no_branch", branchless_even },
         { "likely", likely_even },
         { "unlikely", unlikely_even },
    };
    ArgumentParser parser("test123", "123");

    // Adding command-line arguments for the program
    parser.add_argument("-t", "--test", "Name: ", true);
    parser.add_argument("-s", "--searches", "Searches: ", false);
    parser.add_argument("-l", "--length", "Arr len", false);
    parser.add_argument("-c", "--condition", "Condition true probability (0-1): ", false);

    auto err = parser.parse(argc, argv);
    if (err) {
        std::cout << err << std::endl;
        return -1;
    }
    
    if (parser.exists("t")) {
        std::string test_name = parser.get<std::string>("t");
        std::cout << "test name : " << test_name << std::endl;
        
        // Searching for the selected test name in the available count functions
        for (const auto& param: count_funcs) {
            if (param.first == test_name) {
                count_func_name = std::move(test_name);
                count_func = param.second;
                break;
            }
        }
        
        if (count_func == nullptr) {
            std::cout << "Value not known for test --test\n";
            return -1;
        }   
    } else {
        std::cout << "Need to add --test parameter. List of posible values:\n";
        for (const auto& param: count_funcs) {
            std::cout << "--test " << param.first << "\n";
        }
        return -1;
    }

    // Optional command-line args parsing
    if (parser.exists("s")) {
        int searches_cmdl = parser.get<int>("s");
        if (searches_cmdl > 0 && searches_cmdl <= 10000000) {
            searches = searches_cmdl;
        }
    }

    if (parser.exists("l")) {
        int arr_len_cmdl = parser.get<int>("l");
        if (arr_len_cmdl >= 1000 && arr_len_cmdl <= 100000000) {
            arr_len = arr_len_cmdl;
        }
    }

    if (parser.exists("c")) {
        float condition_cmdl = parser.get<float>("c");
        if (condition_cmdl >= 0.0 && condition_cmdl <= 1.0) {
            condition = condition_cmdl;
        }
    }

    int res;
    std::vector<int> arr = create_random_array<int>(arr_len, 0, arr_len);

    std::cout << "Running test: " << count_func_name << ", on array length " << arr_len << 
                 ", number of searches " << searches << std::endl; 
    std::cout << "Condition probability: " << 100.0 * condition << "%" << std::endl;

    {
        measure_time m("Algorithm");
        for (int i = 0; i < searches; i++) {
            res = count_func(arr.data(), arr_len, arr_len * condition);
        }
    }

    std::cout << (res * 100.0) / arr_len << "% of data fulfills the criterion\n";

    return 0;
}