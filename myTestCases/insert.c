#include <string.h>

void *__memrchr(const void *m, int c, size_t n)
{
	const unsigned char *s = m;
	c = (unsigned char)c;
	while (n--) if (s[n]==c) return (void *)(s+n);
	return 0;
}



// int add(int a, int b)
// {
//     return a + b;
// }

// int max(int a)
// {
//     if (a == 1)
//         return 1;
//     else
//     {
//         int b = a;
//         int c = b + 1;
//         return c;
//     }
// }