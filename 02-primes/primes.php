<?php

$target = getenv('MAXN');

$primes = [2, 3, 5, 7];

function is_prime($x) {
  global $primes;
  foreach ($primes as $d) {
    if ($d * $d > $x)
        return true;
    if ($x % $d == 0)
        return false;
  }
}

for ($n = 9; true; $n += 2) {
  if (is_prime($n)) {
    $primes[] = $n;
    if (count($primes) == $target) {
      echo "primes[$target] = " . $primes[$target-1] . "\n";
      break;
    }
  }
}
