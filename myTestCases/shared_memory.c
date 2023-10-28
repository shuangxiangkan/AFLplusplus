#include <stdio.h>

extern unsigned int *ptr;

void incrementValue() {
    // (*ptr)++;  // 将指针所指的整数内容加1
    (*ptr) = (*ptr) + 1;
}

// int main() {
//     int num = 5;
//     printf("原始值: %d\n", num);

//     incrementValue(&num);  // 调用函数并传递整数的地址
//     printf("加1后的值: %d\n", num);

//     return 0;
// }
