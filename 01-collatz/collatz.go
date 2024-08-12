package main

import (
    "fmt"
    "os"
)

func collatz(n int) int {
    cnt := 0
    for n > 1 {
        if n % 2 > 0 {
            n = 3 * n + 1
        } else {
            n = n / 2
        }
        cnt++
    }
    return cnt
}

func main() {
    var maxn int
    fmt.Sscanf(os.Getenv("MAXN"), "%d", &maxn)
    sum := 0
    for i := 1; i <= maxn; i++ {
        sum += collatz(i)
    }
    fmt.Printf("sum=%d, avg=%f\n", sum, float64(sum) / float64(maxn))
}
