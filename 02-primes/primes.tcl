set primes "2 3 5 7"

proc is_prime {x} {
    global primes
    foreach d $primes {
        if {$d*$d > $x} {return 1}
        if {$x%$d == 0} {return 0}
    }
}

set n $::env(MAXN);

for {set i 9} {1} {incr i 2} {
    if {[is_prime $i]} {
        lappend primes $i
        if {[llength $primes] == $n} {
            puts "primes\[$n\] = $i"
            break
        }
    }
}
