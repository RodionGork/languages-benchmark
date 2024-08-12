package main

import (
    "fmt"
    "os"
)

var primes = []int{2, 3, 5, 7}

func isPrime(x int) bool {
    for _, d := range primes {
        if d * d > x {
            return true
        } else if x % d == 0 {
            return false
        }
    }
    panic("to avoid warning about missing return")
}

func main() {
    var n int
    fmt.Sscanf(os.Getenv("MAXN"), "%d", &n)
    // marginal improvement could be achieved by preallocating "primes" array to size n
    // instead of appending it, but difference is few percents
    for i := 9; true; i += 2 {
        if isPrime(i) {
            primes = append(primes, i)
            if len(primes) == n {
                fmt.Printf("primes[%d] = %d\n", n, primes[n-1])
                break
            }
        }
    }
}
