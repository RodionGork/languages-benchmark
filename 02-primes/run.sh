#!/bin/sh

export MAXN=1000000
TIME="/usr/bin/time -f %e"

go build primes.go
echo -n "Go: " 1>&2 ; $TIME ./primes
rm primes

go build primes_a.go
echo -n "Go (prealloc): " 1>&2 ; $TIME ./primes_a
rm primes_a

javac primes.java
echo -n "Java: " 1>&2 ; $TIME java Primes
rm Primes.class

echo -n "PHP: " 1>&2 ; $TIME php primes.php

echo -n "Python3: " 1>&2 ; $TIME python3 primes.py

echo -n "Pypy3: " 1>&2 ; $TIME pypy primes.py

echo -n "TCL: " 1>&2 ; $TIME tclsh primes.tcl

echo -n "TCL (array): " 1>&2 ; $TIME tclsh primes_a.tcl

echo -n "TCL (dict): " 1>&2 ; $TIME tclsh primes_d.tcl

echo -n "Lua: " 1>&2 ; $TIME lua primes.lua

echo -n "LuaJit: " 1>&2 ; $TIME luajit primes.lua
