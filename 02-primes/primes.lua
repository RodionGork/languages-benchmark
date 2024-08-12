target = tonumber(os.getenv('MAXN'))

primes = {2, 3, 5, 7}

function is_prime(x)
  for _, d in ipairs(primes) do
    if d * d > x then return true end
    if x % d == 0 then return false end
  end
end

n = 9
while true do
  if is_prime(n) then
    primes[#primes+1] = n
    if #primes == target then
      print('primes[' .. target .. '] = ' .. primes[#primes])
      break
    end
  end
  n = n + 2
end
