function collatz(n)
    cnt = 0
    while n > 1
        n = (n % 2 != 0) ? 3n+1 : div(n, 2)
        cnt += 1
    end
    return cnt
end

n = parse(Int64, ENV["MAXN"])
total = 0
for i = 1:n
    global total += collatz(i)
end

println("sum=$total, avg=$(total/n)")
