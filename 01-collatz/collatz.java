class Collatz {
	static int collatz(int x) {
		int cnt = 0;
		while (x > 1) {
			x = x % 2 != 0 ? 3 * x + 1 : x / 2;
			cnt++;
		}
		return cnt;
	}
	
	public static void main(String[] argv) {
		int maxN = Integer.parseInt(System.getenv("MAXN"));
		int sum = 0;
		for (int i = 0; i <= maxN; i++) {
		    sum += collatz(i);
		}
		System.out.printf("sum=%d, avg=%.2f%n", sum, sum * 1.0 / maxN);
	}
}
