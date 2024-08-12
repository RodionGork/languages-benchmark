import os

def collatz(n):
    cnt = 0
    while n > 1:
        n = 3*n+1 if n%2>0 else n//2
        cnt += 1
    return cnt

n = int(os.getenv('MAXN'))
s = 0
for i in range(1, n+1):
    s += collatz(i)
print("sum=%s, avg=%s" % (s, s/n))
