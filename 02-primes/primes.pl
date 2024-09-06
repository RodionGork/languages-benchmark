$target = $ENV{'MAXN'};

@primes = (2, 3, 4, 5);

sub is_prime {
    my ($x) = @_;
    foreach $d (@primes) {
        return 1 if ($d * $d > $x);
        return 0 if ($x % $d == 0);
    }
}

for ($n = 9; 1; $n += 2) {
    if (is_prime($n)) {
        push @primes, $n;
        if (@primes == $target) {
            print "primes[$target] = " . $primes[$target-1] . "\n";
            last;
        }
    }
}
