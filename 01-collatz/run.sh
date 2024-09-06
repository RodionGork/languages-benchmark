#!/bin/sh

export MAXN=3000000
TIME="/usr/bin/time -f %e"

gcc -O2 collatz.c
echo -n "C (long long): " 1>&2; $TIME ./a.out
rm a.out

go build collatz.go
echo -n "Go: " 1>&2 ; $TIME ./collatz
rm collatz

javac collatz.java
echo -n "Java:" 1>&2 ; $TIME java Collatz
rm Collatz.class

echo -n "PHP: " 1>&2 ; $TIME php collatz.php

echo -n "Perl: " 1>&2 ; $TIME perl collatz.pl

echo -n "Python3: " 1>&2 ; $TIME python3 collatz.py

echo -n "Pypy3: " 1>&2 ; $TIME pypy collatz.py

echo -n "TCL: " 1>&2 ; $TIME tclsh collatz.tcl

echo -n "Lua: " 1>&2 ; $TIME lua collatz.lua

echo -n "LuaJit: " 1>&2 ; $TIME luajit collatz.lua
