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

### Collatz - simple loops with scalars

These script execute collatz sequence for numbers from `1` to `3mln`, this involves main
loop for million iteration - and internal loop in the collatz function - thus total
number of inner iterations is on order of `10^8`. Here are example times (may somewhat differ on your machine):

    cd 01-collatz
    ./run.sh >/dev/null

    C (long long): 0.69
    Go: 1.04
    Java: 1.31
    PHP: 20.17
    Python3: 42.08
    Pypy3: 1.92
    TCL: 47.79
    Lua: 31.81
    LuaJit: 2.10

Note that for Go and Java times are small so there is inaccuracy due to compiling code before running

### Primes - nested loops involving arrays

Here we build array of the first `1mln` primes using naive "trial division"
algorithm. Note that algorithm uses arrays mostly in "sequential" order which may
show better performance compared to "random-access".

    cd 02-primes
    ./run.sh >/dev/null

    C (long long): 4.28
    Go: 4.65
    Go (int32): 1.75
    Java: 1.60
    Java (long): 4.82
    PHP: 11.99
    Python3: 42.57
    Pypy3: 7.31
    TCL (list): 63.30
    TCL (array): 104.78
    TCL (dict): 112.41
    Lua: 33.75
    LuaJit: 2.18
