function collatz(n)
    local cnt = 0
    while n > 1 do
        n = (n%2>0) and 3*n+1 or n/2
        cnt = cnt+1
    end
    return cnt
end

n = os.getenv('MAXN')
sum = 0
for i=1,n do
    sum = sum + collatz(i)
end
print(string.format("sum=%d, avg=%f", sum, sum/n))

