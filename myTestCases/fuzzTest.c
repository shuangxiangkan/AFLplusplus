#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
// #include "afl-fuzz.h"


// 声明customFunction()
char* customFunction(const char* input) {
    // 检查字符串是否以"abc"开头
    if (strncmp(input, "abc", 3) == 0) {
        // 如果以"abc"开头，则返回"abc"
        return "abc";
    } else {
        // 否则返回输入字符串本身
        return (char*)input;
    }
}

int main(int argc, char** argv) {

    // char* input = argv[1];
    char input[100] = {0};
    gets(input);   //存在栈溢出漏洞

    // 调用customFunction()并打印结果
    char* result = customFunction(input);
    printf("Result: %s\n", result);

    // 判断参数和返回值指针是否相同
    if (input == result) {
        printf("Input and result pointers are the same. Stopping Fuzz and saving input...\n");

        // 保存输入到文件
        FILE* input_file = fopen("input_same.txt", "w");
        if (input_file != NULL) {
            fprintf(input_file, "%s", input);
            fclose(input_file);
        }

        // 触发AFL++的停止条件
        // __AFL_SHM_EXIT(0);
    }

    return 0;
}


// #include <stdio.h>
// int main(int argc, char *argv[])
// {
//     char buf[100] = {0};
//     gets(buf);   //存在栈溢出漏洞
//     printf(buf); //存在格式化字符串漏洞
//     return 0;
// }
