#include <stdio.h>

// 手动声明外部函数（因为没有 .h 头文件）

// 来自 fibonacci.c
unsigned long long fib(int n);

// 来自 primes.c
int sieve_of_eratosthenes(int limit, int** primes);

// 来自 stats.c
typedef struct {
    int count;
    int sum;
    double average;
    int max;
    int min;
} Statistics;

Statistics calculate_stats(int* arr, int size);

int main() {
    // 1. 斐波那契测试
    int fib_index = 75;
    printf("Fibonacci(%d) = %llu\n", fib_index, fib(fib_index));

    // 2. 素数筛选测试
    int prime_limit = 100;
    int* primes;
    int prime_count = sieve_of_eratosthenes(prime_limit, &primes);
    printf("小于 %d 的素数共有 %d 个：\n", prime_limit, prime_count);
    for (int i = 0; i < prime_count; ++i) {
        printf("%d ", primes[i]);
    }
    printf("\n");
    free(primes);

    // 3. 统计测试
    int data[] = {10, 23, 45, 67, 89, 12, 56, 34};
    int size = sizeof(data) / sizeof(data[0]);
    Statistics stats = calculate_stats(data, size);
    printf("统计数据结果：\n");
    printf("总数: %d\n", stats.count);
    printf("总和: %d\n", stats.sum);
    printf("平均值: %.2f\n", stats.average);
    printf("最大值: %d\n", stats.max);
    printf("最小值: %d\n", stats.min);

    return 0;
}
