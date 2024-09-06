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
    Go: 1.0
    Java: 1.3
    PHP: 20
    Perl: 43
    Python3: 42
    Pypy3: 1.9
    TCL: 48
    Lua: 32
    LuaJit: 2.1

Note that for Go and Java times are small so there is inaccuracy due to compiling code before running

### Primes - nested loops involving arrays

Here we build array of the first `1mln` primes using naive "trial division"
algorithm. Note that algorithm uses arrays mostly in "sequential" order which may
show better performance compared to "random-access".

    cd 02-primes
    ./run.sh >/dev/null

    C (long long): 4.3
    Go: 4.7
    Go (int32): 1.8
    Java: 1.6
    Java (long): 4.8
    PHP: 12
    Perl: 43
    Python3: 43
    Pypy3: 7.3
    TCL (list): 63
    TCL (array): 105
    TCL (dict): 112
    Lua: 34
    LuaJit: 2.2
