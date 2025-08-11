#include <stdio.h>
#include <stdlib.h>

// 返回小于 limit 的所有素数的个数，并将这些素数存入数组 primes 中
int sieve_of_eratosthenes(int limit, int** primes) {
    if (limit < 2) {
        *primes = NULL;
        return 0;
    }

    char* is_prime = (char*)calloc(limit + 1, sizeof(char));
    for (int i = 2; i <= limit; ++i)
        is_prime[i] = 1;

    for (int p = 2; p * p <= limit; ++p)
        if (is_prime[p])
            for (int i = p * p; i <= limit; i += p)
                is_prime[i] = 0;

    int count = 0;
    for (int i = 2; i <= limit; ++i)
        if (is_prime[i]) ++count;

    *primes = (int*)malloc(count * sizeof(int));
    int idx = 0;
    for (int i = 2; i <= limit; ++i)
        if (is_prime[i])
            (*primes)[idx++] = i;

    free(is_prime);
    return count;
}
