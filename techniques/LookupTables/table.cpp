#include <cstdio>

int main(int argc, char *argv[]) {
    int a, c = 1, d = 2;
    bool b = false;
    static const int lookup_table[] = { d, c };
    a = lookup_table[b];
}