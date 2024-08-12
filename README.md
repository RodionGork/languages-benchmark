# languages-benchmark

Collection of minified scripts in various languages to be able to compare their performance.

_There are no great "scientific" value in them, just I sometimes found myself rewriting such
scripts from scratch when necessary and forgetting them here and there after comparison is done._

Results should be treated with caution as the language "speed" depends on too many factors.
I use these scripts mainly when learning new languages, assessing limitations imposed on
tasks for [CodeAbbey](https://www.codeabbey.com) or considering rewriting of some bottleneck
fragments.

There are several subfolders because we may expect that performance depends on specific
task, data structures used etc.

_`Go` is used as a "reference" for natively-compiled language, though it is not 100%-correct
because it uses automatic memory management. In other words it performs close to other
natively-compiled languages unless heavy memory manipulations are involved.
If you want to be sure, write in `C` :)_

### Collatz - simple loops with scalars

These script execute collatz sequence for numbers from `1` to `1mln`, this involves main
loop for million iteration - and internal loop in the collatz function - thus total
number of inner iterations is on order of `10^8`. Here are example times (may somewhat differ on your machine):

    cd 01-collatz
    ./run.sh >/dev/null

    Go: 0.43
    PHP: 6.24
    Python3: 13.01
    Pypy3: 0.51
    TCL: 14.77
    Lua: 9.69
    LuaJit: 0.65

### Primes - nested loops involving arrays

Here we build array of the first `1mln` primes using naive "trial division"
algorithm. Note that algorithm uses arrays mostly in "sequential" order which may
show better performance compared to "random-access".

    cd 02-primes
    ./run.sh >/dev/null

    Go: 4.95
    PHP: 11.98
    Python3: 42.75
    Pypy3: 7.27
    TCL: 63.12
    Lua: 33.61
    LuaJit: 2.18

_TCL is poor here - as many shell-languages it uses lists in form of space-separated string,
worth trying associative arrays yet. Why Go is slower than LuaJit - is an open question._
