<?php

function collatz($n) {
    $cnt = 0;
    while ($n > 1) {
        $n = ($n%2 ? 3*$n+1 : $n/2);
        $cnt++;
    }
    return $cnt;
}

$max = getenv('MAXN');

$sum = 0;
for ($i = 1; $i <= $max; $i++) {
    $sum += collatz($i);
}

$avg = $sum / $max;
echo "sum=$sum, avg=$avg\n";
