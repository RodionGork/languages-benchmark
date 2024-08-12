<?php

$target = getenv('MAXN');

function is_prime($x) {
  if ($x % 2 == 0) {
    return false;
  }
  for ($d = 3; $d * $d <= $x; $d += 2) {
    if ($x % $d == 0) {
      return false;
    }
  }
  return true;
}

$c = 1;
for ($n = 3; true; $n += 2) {
  if (is_prime($n)) {
    $c += 1;
    if ($c == $target) {
      echo "primes[$c] = $n\n";
      break;
    }
  }
}
