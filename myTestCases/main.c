// #include <iostream>
// #include <fstream>
#include <stdio.h>
// #include "cJSON.h"
#include <string.h>

void SpecFileGeneration(const char *specification, const char *fileName, const char *funSignature) 
{
    FILE *file = fopen(fileName, "a");
    if (file) {
        fprintf(file, "%s\n", funSignature);
        fprintf(file, "{\n");
        fprintf(file, "%s\n", specification);
        fprintf(file, "}\n");
        fclose(file);
    } else {
        // 处理文件打开失败的情况
        printf("Error: Failed to open file %s\n", fileName);
    }
}

char *__memrchr(const char *m, int c, size_t n)
{
	const char *s = m;
	c = (unsigned char)c;
	while (n--) if (s[n]==c) return (char *)(s+n);
	return 0;
}

int main() {

	while (__AFL_LOOP(1000)) 
	{
		// char _object[4096];
		// if (fgets(_object, sizeof(_object), stdin) == NULL) {
		// 	return 1;
		// }
		// cJSON *object = cJSON_Parse(_object);
		// char *ret = __memrchr()

		char m[1024];
		if (fgets(m, sizeof(m), stdin) == NULL) {
			return 1;
		}

		char *ret = __memrchr(m, 97, 3);

	
		// char* result = cJSON_SetValuestring(object, valuestring);

		char* fileName = "__memrchr.cpp";
		char* funSignature = "void *__memrchr(const void *m, int c, size_t n)";

		if (ret == m)
		{
			SpecFileGeneration("ret == valuestring", fileName, funSignature);
		}
	}

	return 0;
}
