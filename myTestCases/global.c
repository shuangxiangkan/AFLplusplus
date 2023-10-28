#include <stdio.h>

int __afl_api_spec = 0;

int main()
{
    int a = 1, b = 2;
    int c = 3, d = 4;
    printf("a = %d, b = %d\n", a, b);
    return 0;
}