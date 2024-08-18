package main

import (
    "fmt"
    "os"
)

var primes []int

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
    primes = make([]int, n, n)
    for i, v := range []int{2, 3, 5, 7} {
        primes[i] = v
    }
    c := 4
    for i := 9; true; i += 2 {
        if isPrime(i) {
            primes[c] = i
            c++
            if c == n {
                fmt.Printf("primes[%d] = %d\n", n, primes[n-1])
                break
            }
        }
    }
}
