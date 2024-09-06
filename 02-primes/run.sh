#!/bin/sh

export MAXN=1000000
TIME="/usr/bin/time -f %e"

gcc -O2 primes.c
echo -n "C (long long): " 1>&2; $TIME ./a.out
rm a.out

go build primes.go
echo -n "Go: " 1>&2 ; $TIME ./primes
rm primes

go build primes32.go
echo -n "Go (int32): " 1>&2 ; $TIME ./primes32
rm primes32

javac primes.java
echo -n "Java: " 1>&2 ; $TIME java Primes
rm Primes.class

javac primes64.java
echo -n "Java (long): " 1>&2 ; $TIME java Primes
rm Primes.class

echo -n "PHP: " 1>&2 ; $TIME php primes.php

echo -n "Perl: " 1>&2 ; $TIME perl primes.pl

echo -n "Python3: " 1>&2 ; $TIME python3 primes.py

echo -n "Pypy3: " 1>&2 ; $TIME pypy primes.py

echo -n "TCL: " 1>&2 ; $TIME tclsh primes.tcl

echo -n "TCL (array): " 1>&2 ; $TIME tclsh primes_a.tcl

echo -n "TCL (dict): " 1>&2 ; $TIME tclsh primes_d.tcl

echo -n "Lua: " 1>&2 ; $TIME lua primes.lua

echo -n "LuaJit: " 1>&2 ; $TIME luajit primes.lua
