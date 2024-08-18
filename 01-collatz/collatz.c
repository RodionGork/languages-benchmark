#include <stdio.h>
#include <stdlib.h>

int collatz(long long x) {
    int cnt = 0;
    while (x > 1) {
        x = x % 2 ? 3 * x + 1 : x / 2;
        cnt++;
    }
    return cnt;
}

int main(void) {
    int n, i, sum = 0;
    sscanf(getenv("MAXN"), "%d", &n);
    for (i = 1; i <= n; i++) {
        sum += collatz(i);
    }
    printf("sum=%d, avg=%.2f\n", sum, sum / (double) n);
}
