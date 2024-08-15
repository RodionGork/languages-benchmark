set primes [dict create 1 2 2 3 3 5 4 7]

proc is_prime {x} {
    global primes
    for {set i 1} {1} {incr i} {
        set d [dict get $primes $i]
        if {$d*$d > $x} {return 1}
        if {$x%$d == 0} {return 0}
    }
}

set n $::env(MAXN);

set c 4
for {set i 9} {1} {incr i 2} {
    if {[is_prime $i]} {
        incr c
        dict append primes $c $i
        if {$c == $n} {
            puts "primes\[$n\] = $i"
            break
        }
    }
}
