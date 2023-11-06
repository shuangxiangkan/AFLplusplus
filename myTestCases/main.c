#include <stdio.h>
#include <string.h>
#include <unistd.h>


// #pragma clang optimize off
// #pragma GCC            optimize("O0")



__attribute__((noinline)) 
char *__memrchr(const char *m, int c, size_t n)
{
	const char *s = m;
	c = (unsigned char)c;
	while (n--) 
	{
		if (s[n]==c)
		{
			return (char *)(s+n);
		}
	}
	return 0;
	// return m;
}

int main() {

	char buf[1024];

	__AFL_FUZZ_INIT();
	while (__AFL_LOOP(1000)) 
	{
		// char m[1024];
		// if (fgets(buf, sizeof(buf), stdin) == NULL) {
		// 	printf("Error: Failed to read from stdin\n");
		// 	return 1;
		// }

		memset(buf, 0, 100);
		ssize_t bytesRead = read(0, buf, 100);

		if (bytesRead == -1) {
			perror("Error reading from stdin");
			return 1;
		}

		printf("input: \n--------\n");
		printf("%s", buf);
		printf("\n--------\n");

		char *m = strtok(buf, "\n");
		char c = strtok(NULL, "\n")[0];
		int n;
		sscanf(strtok(NULL, "\n"), "%d", &n);

		printf("m: %s\n", m);
		printf("c: %c\n", c);
		printf("n: %d\n", n);

		char *ret = __memrchr(m, c, n);
		printf("ret: %s\n", ret);
	}

	return 0;
}
