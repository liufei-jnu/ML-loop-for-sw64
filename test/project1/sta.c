#include <stdio.h>

typedef struct {
    int count;
    int sum;
    double average;
    int max;
    int min;
} Statistics;

// 对给定数组进行统计分析
Statistics calculate_stats(int* arr, int size) {
    Statistics stats;
    stats.count = size;
    stats.sum = 0;
    stats.max = arr[0];
    stats.min = arr[0];

    for (int i = 0; i < size; ++i) {
        stats.sum += arr[i];
        if (arr[i] > stats.max) stats.max = arr[i];
        if (arr[i] < stats.min) stats.min = arr[i];
    }

    stats.average = (double)stats.sum / size;
    return stats;
}
