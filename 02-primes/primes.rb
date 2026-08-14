target = ENV['MAXN'].to_i

$primes = [2, 3, 5, 7]

def is_prime(x)
    $primes.each do |d|
        return true if d * d > x
        return false if x % d == 0
    end
end

n = 9
while true
    if is_prime(n)
        $primes << n
        if $primes.length == target
            puts 'primes[%s] = %s' % [target, $primes[-1]]
            break
        end
    end
    n += 2
end
