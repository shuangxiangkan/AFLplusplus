#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// 定义 u8 类型
typedef unsigned char u8;

void spliceData(u8** buf, int* len, int start1, int len1, int start2, int len2) {
    if (start1 > start2) {
        // 交换 start1 和 start2
        int temp = start1;
        start1 = start2;
        start2 = temp;

        // 交换 len1 和 len2
        temp = len1;
        len1 = len2;
        len2 = temp;
    }

    // 创建新的缓冲区，长度与原始缓冲区相同
    u8* new_data = (u8*)malloc(*len);

    // 复制原始数据到新缓冲区
    memcpy(new_data, *buf, *len);

    // 拼接数据
    memcpy(new_data + start1, (*buf) + start2, len2);

    // 释放原始数据的内存
    free(*buf);

    // 更新 buf 指针
    *buf = new_data;
}

int main() {
    // 使用当前时间作为随机数生成器的种子
    srand(time(NULL));

    u8* out_buf = (u8*)malloc(100); // 为字符串分配动态内存
    strcpy((char*)out_buf, "This is a sample buffer"); // 将字符串复制到动态分配的内存
    int len = strlen((char*)out_buf);

    // 生成随机的 start1 和 len1
    int start1 = rand() % len;
    int len1 = rand() % (len - start1) + 1;

    // 生成随机的 start2，确保与 start1 不重叠
    int start2;
    do {
        start2 = rand() % len;
    } while (start2 >= start1 && start2 < start1 + len1);
    int len2 = rand() % (len - start2) + 1;

    // 打印替换前的数据和需要替换的数据
    printf("Original: %s\n", out_buf);
    printf("Start1: %d, Len1: %d\n", start1, len1);
    printf("Start2: %d, Len2: %d\n", start2, len2);

    // 打印需要替换的数据内容
    u8* data1 = out_buf + start1;
    u8* data2 = out_buf + start2;
    printf("Data to be replaced (start1): %.*s\n", len1, data1);
    printf("Data to be replaced (start2): %.*s\n", len2, data2);

    // 执行数据拼接操作
    spliceData(&out_buf, &len, start1, len1, start2, len2);

    printf("Spliced: %.*s\n", len, out_buf); // 打印拼接后的数据

    // 在程序结束前释放内存
    free(out_buf);

    return 0;
}
