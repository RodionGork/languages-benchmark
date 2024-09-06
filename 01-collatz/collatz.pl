sub collatz {
    my $n = shift @_;
    my $cnt = 0;
    while ($n > 1) {
        $n = $n % 2 ? $n * 3 + 1 : $n / 2;
        $cnt++;
    }
    return $cnt;
}

$max = $ENV{'MAXN'};

$sum = 0;

for ($i = 1; $i <= $max; $i++) {
    $sum += collatz($i);
}

$avg = $sum / $max;

print "sum=$sum, avg=$avg\n";
