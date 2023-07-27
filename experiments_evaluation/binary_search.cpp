#include "utils.h"

#include <chrono>
#include <iostream>
#include <vector>

#include "argparse.h"
#include "measure_time.h"

enum search_type {
   BASE,
   CMOV,
   ARITH,
   UNKNOWN,
};

using namespace argparse;

// Function to parse command-line arguments
bool parse_arguments(int argc, const char** argv, search_type& out_search_type, 
                    std::string& out_search_type_string, int& out_searches, 
                    int& out_length, bool& out_with_prefetching) {
    // Mapping between search type strings and corresponding search types
    std::vector<std::pair<std::string, search_type>> search_type_map = {
         { "regular", search_type::BASE },
         { "cmov", search_type::CMOV},
         { "arithmetic", search_type::ARITH },
    };
    
    ArgumentParser parser("binary_search", "Binary Search algorithm for different kinds of branch avoidance");

    parser.add_argument("-t", "--test", "Name of the test to run", true);
    parser.add_argument("-s", "--searches", "Number of searches to perform", false);
    parser.add_argument("-l", "--length", "Array length", false);
    parser.add_argument("-p", "--prefetching", "If prefetching should be enabled or not", false);
    
    auto err = parser.parse(argc, argv);
    if (err) {
        std::cout << err << std::endl;
        return false;
    }
    
    if (parser.exists("t")) {
        out_search_type = search_type::UNKNOWN;
        std::string test_name = parser.get<std::string>("t");
        for (const auto& param: search_type_map) {
            if (param.first == test_name) {
                out_search_type = param.second;
                out_search_type_string = param.first;
                break;
            }
        }
        if (out_search_type == search_type::UNKNOWN) {
            std::cout << "Unknown value for --test\n";
            return false;
        }   
    } else {
        std::cout << "Parameter --test needed. Possible values for parameter:\n";
        for (const auto& param: search_type_map) {
            std::cout << "--test " << param.first << "\n";
        }
        return false;
    }

    // Parsing optional command-line arguments for searches, arr length, and prefetching
    if (parser.exists("s")) {
        int searches_cmdl = parser.get<int>("s");
        if (searches_cmdl > 0 && searches_cmdl <= 10000000) {
            out_searches = searches_cmdl;
        }
    }

    if (parser.exists("l")) {
        int arr_len_cmdl = parser.get<int>("l");
        if (arr_len_cmdl >= 1000 && arr_len_cmdl <= 100000000) {
            out_length = arr_len_cmdl;
        }
    }

    if (parser.exists("p")) {
        out_with_prefetching = parser.get<bool>("p");
    }

    return true;
}

// Template function for binary search with different options
template <bool with_prefetching, search_type st>
int binary_search(int* arr, int number_of_elements, int key) {
    int left = 0, right = number_of_elements-1, mid;
    while(left <= right) {
        mid = (left + right)/2;
        if (with_prefetching) {
            // Prefetching the left and right paths
            __builtin_prefetch (&arr[(mid + 1 + right)/2], 0, 1);
            __builtin_prefetch (&arr[(left + mid - 1)/2], 0, 1);
        }

        // Base
        if (st == search_type::BASE) {
            if (arr[mid] == elem) {
                return mid;
            }
            if(array[mid] < elem) {
                left = mid + 1;
            } else {
                right = mid-1;
            }
        }

        // CMOV
        if (st == search_type::CMOV) {
            if (arr[mid] == key) {
                return mid;
            }
            int middle = arr[mid];
            int new_left = mid + 1;
            int new_right = mid - 1;

#if defined(__x86_64)
            __asm__ (
                "cmp %[arr_middle], %[key];"
                "cmovae %[new_left], %[left];"
                "cmovb %[new_right], %[right];"
                : [left] "+&r"(left), [right] "+&r"(right)
                : [new_left] "g"(new_left), [new_right] "g"(new_right), [arr_middle] "g"(middle), [key] "g"(key)
                : "cc"
            );
#elif defined(__MIPSEL)
            __asm__ (
                "sub $8, %[arr_middle], %[key];"
                "sra $8, $8, 31;"
                "movn %[left], %[new_left], $8;"
                "movz %[right], %[new_right], $8;"
                : [left] "+&r"(left), [right] "+&r"(right)
                : [new_left] "r"(new_left), [new_right] "r"(new_right), [arr_middle] "r"(middle), [key] "r"(key)
                : "cc", "$8"
            );
#else
#error Implementation missing
#endif
        }

        // Arithmetics
        if (st == search_type::ARITH) {
            if (arr[mid] == key) {
                return mid;
            }

            int middle = arr[mid];
            int new_left = mid + 1;
            int new_right = mid - 1;
            int condition = arr[mid] < key;
            int t_cond_mask = -condition;
            int f_cond_mask = -(1 - condition);

            // Arithmetic operations based on the comparison result
            left += t_cond_mask & (new_left - left);
            right += f_cond_mask & (new_right - right); 
        }
    }

    return -1;
}

int main(int argc, const char* argv[]) {
    bool prefetching = false;
    std::vector<int> index_arr(1);
    int len = 4000000;
    int* input_arr;
    int searches = len;
    search_type st = search_type::UNKNOWN;
    std::string st_name;

    bool parse_result = parse_arguments(argc, argv, st, st_name, searches, len, prefetching);
    if (!parse_result) {
        std::cout << "Bad args\n";
        return -1;
    }

        // Printing the configuration values
    std::cout << "Binary search:\n";
    std::cout << "Search type: " << st_name << std::endl;
    std::cout << "Working set = " << len << "\n";
    std::cout << "Software prefetching = " << (prefetching ? "on" : "off") << "\n";
    std::cout << "Number of searches = " << searches << "\n";

    // Creating an arr of random indices
    index_arr = create_random_arr<int>(searches, 0, len);
    
    // Allocating memory for the input arr
    input_arr = new int[len];
    
    // Generating a random growing arr
    generate_random_growing_arr(input_arr, len);

    {
        measure_time m("Binary search algorithm");
        
        // Performing binary search with or without prefetching based on the configuration
        if (prefetching) {
            if (st == search_type::BASE ) {
                for (int i = 0; i < searches; i++) {
                    binary_search<true, search_type::BASE>(input_arr, len, input_arr[index_arr[i]]);
                }
            } else if (st == search_type::CMOV) {
                for (int i = 0; i < searches; i++) {
                    binary_search<true, search_type::CMOV>(input_arr, len, input_arr[index_arr[i]]);
                }
            } else if (st == search_type::ARITH) {
                for (int i = 0; i < searches; i++) {
                    binary_search<true, search_type::ARITH>(input_arr, len, input_arr[index_arr[i]]);
                }
            }
        } else {
            if (st == search_type::BASE ) {
                for (int i = 0; i < searches; i++) {
                    binary_search<false, search_type::BASE>(input_arr, len, input_arr[index_arr[i]]);
                }
            } else if (st == search_type::CMOV) {
                for (int i = 0; i < searches; i++) {
                    binary_search<false, search_type::CMOV>(input_arr, len, input_arr[index_arr[i]]);
                }
            } else if (st == search_type::ARITH) {
                for (int i = 0; i < searches; i++) {
                    binary_search<false, search_type::ARITH>(input_arr, len, input_arr[index_arr[i]]);
                }
            }
        }
    }

    // Freeing the allocated memory
    delete[] input_arr;

    return 0;
}
