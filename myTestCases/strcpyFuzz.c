#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {

    char src[100] = {0};
    char dest[100];
    gets(src);   //存在栈溢出漏洞

    char *result = strcpy(dest, src); // General work, important !!!

    // 判断参数和返回值指针是否相同
    if (result == dest) {
        FILE* input_file = fopen("result_dest.txt", "w");
        if (input_file != NULL) {
            fprintf(input_file, "%s", "result_dest");
            fclose(input_file);
        }
    } 
    else if (result == src){
        FILE* input_file = fopen("result_source.txt", "w");
        if (input_file != NULL) {
            fprintf(input_file, "%s", "result_src");
            fclose(input_file);
        }
    }
    else if (src == dest){
        FILE* input_file = fopen("source_dest.txt", "w");
        if (input_file != NULL) {
            fprintf(input_file, "%s", "src_dest");
            fclose(input_file);
        }
    }

    return 0;
}
