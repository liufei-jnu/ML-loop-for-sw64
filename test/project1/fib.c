#include <stdio.h>

// 计算第 n 个斐波那契数（n >= 0）
unsigned long long fibonacci(int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;

    unsigned long long a = 0, b = 1, temp;
    for (int i = 2; i <= n; ++i) {
        temp = a + b;
        a = b;
        b = temp;
    }
    return b;
}
