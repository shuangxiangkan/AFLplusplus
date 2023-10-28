#include <stdio.h>
int main(int argc, char *argv[])
{
    char buf[100] = {0};
    gets(buf);   //存在栈溢出漏洞
    printf(buf); //存在格式化字符串漏洞
    return 0;
}