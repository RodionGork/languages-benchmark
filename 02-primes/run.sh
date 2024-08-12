#!/bin/sh

export MAXN=500000
TIME="/usr/bin/time -f %e"

# just to pre-compile
#MAXN=10 go run collatz.go > /dev/null

#echo -n "Go: " 1>&2 ; $TIME go run collatz.go

echo -n "PHP: " 1>&2 ; $TIME php primes.php

echo -n "Python3: " 1>&2 ; $TIME python3 primes.py

echo -n "Pypy3: " 1>&2 ; $TIME pypy primes.py

#echo -n "TCL: " 1>&2 ; $TIME tclsh collatz.tcl

echo -n "Lua: " 1>&2 ; $TIME lua primes.lua

echo -n "LuaJit: " 1>&2 ; $TIME luajit primes.lua
