#include <stdio.h>
#include <stdlib.h>

long long* primes;

int is_prime(long long x) {
    int i = 0;
    while (1) {
        long long d = primes[i++];
        if (d * d > x) return 1;
        if (x % d == 0) return 0;
    }
}

int main(void) {
    int n, c, i;
    sscanf(getenv("MAXN"), "%d", &n);
    primes = malloc(sizeof(long long) * n);
    primes[0] = 2;
    primes[1] = 3;
    primes[2] = 5;
    primes[3] = 7;
    c = 4;
    for (i = 9; 1; i += 2) {
        if (is_prime(i)) {
            primes[c++] = i;
            if (c == n) {
                printf("primes[%d] = %lld\n", n, primes[n - 1]);
                break;
            }
        }
    }
    free(primes);
}
