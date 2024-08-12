target = tonumber(os.getenv('MAXN'))

function is_prime(x)
  if x % 2 == 0 then return false end
  local d = 3
  while d * d <= x do
    if x % d == 0 then return false end
    d = d + 2
  end
  return true
end

c = 1
n = 3
while true do
  if is_prime(n) then
    c = c + 1
    if c == target then
      print('primes[' .. c .. '] = ' .. n)
      break
    end
  end
  n = n + 2
end
