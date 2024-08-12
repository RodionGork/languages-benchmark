import os

target = int(os.getenv('MAXN'))

primes = [2, 3, 5, 7]

def is_prime(x):
  for d in primes:
    if d * d > x:
      return True
    if x % d == 0:
      return False

n = 9
while True:
  if is_prime(n):
    primes.append(n)
    if len(primes) == target:
      print('primes[%s] = %s' % (target, primes[-1]))
      break
  n += 2
