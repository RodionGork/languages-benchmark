proc collatz {x} {
    set cnt 0
    while {$x > 1} {
        incr cnt
        set x [expr {$x%2 ? 3*$x+1 : $x/2}]
    } 
    return $cnt
}

set n $::env(MAXN);

set sum 0
for {set y 1} {$y <= $n} {incr y} {
    incr sum [collatz $y]
}
set avg [expr {$sum / double($n)}]
puts "sum=$sum, avg=$avg"
