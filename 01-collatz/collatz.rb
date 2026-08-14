def collatz(n)
    cnt = 0
    while n > 1 do
        n = n % 2 > 0 ? 3 * n + 1 : n / 2
        cnt += 1 
    end
    cnt
end

n = ENV['MAXN'].to_i
s = 0
(1 .. n).each { |i| s += collatz(i) }
puts "sum=%s, avg=%s" % [s, s.to_f/n]

