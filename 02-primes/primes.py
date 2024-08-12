import os

target = int(os.getenv('MAXN'))

def is_prime(x):
  if x % 2 == 0:
    return False
  d = 3
  while d * d <= x:
    if x % d == 0:
      return False
    d += 2
  return True

c = 1
n = 3
while True:
  if is_prime(n):
    c += 1
    if c == target:
      print('primes[%s] == %s' % (c, n))
      break
  n += 2
