function isprime(x)
    global primes
    i = 1
    while true
        d = primes[i]
        i += 1
        if d * d > x return true end
        if x % d == 0 return false end
    end
end

n = parse(Int64, ENV["MAXN"])

primes = Array{Int64}(undef, n)
primes[1] = 2
primes[2] = 3
primes[3] = 5
primes[4] = 7

c = 4
p = 9
while true
    if isprime(p)
        global c += 1
        primes[c] = p
        if c == n
            println("primes[$n] = $(primes[n])")
            break
        end
    end
    global p += 2
end
