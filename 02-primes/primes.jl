function isprime(primes, x)
    for d in primes
        if d * d > x return true end
        if x % d == 0 return false end
    end
end

function main()
    primes = [2, 3, 5, 7]
    n = parse(Int64, ENV["MAXN"])
    p = 9
    while true
        if isprime(primes, p)
            append!(primes, p)
            if size(primes, 1) == n
                println("primes[$n] = $(primes[n])")
                break
            end
        end
        p += 2
    end
end

main()
