class Primes {
	static long[] primes;

	static boolean isPrime(long x) {
		for (long d : primes) {
			if (d * d > x) return true;
			if (x % d == 0) return false;
		}
		throw new RuntimeException("never should get here");
	}
	
	public static void main(String[] argv) {
		int maxN = Integer.parseInt(System.getenv("MAXN"));
		primes = new long[maxN];
		primes[0] = 2;
		primes[1] = 3;
		primes[2] = 5;
		primes[3] = 7;
		int c = 4;
		for (int i = 9; true; i += 2) {
			if (isPrime(i)) {
				primes[c++] = (long)i;
				if (c == maxN) {
					System.out.printf("primes[%d] = %d%n",
						maxN, primes[maxN - 1]);
					break;
				}
			}
		}
	}
}
