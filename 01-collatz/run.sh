#!/bin/sh

export MAXN=1000000
TIME="/usr/bin/time -f %e"

# just to pre-compile
MAXN=10 go run collatz.go > /dev/null

echo -n "Go: " 1>&2 ; $TIME go run collatz.go

echo -n "PHP: " 1>&2 ; $TIME php collatz.php

echo -n "Python3: " 1>&2 ; $TIME python3 collatz.py

echo -n "Pypy3: " 1>&2 ; $TIME pypy collatz.py

echo -n "TCL: " 1>&2 ; $TIME tclsh collatz.tcl

echo -n "Lua: " 1>&2 ; $TIME lua collatz.lua

echo -n "LuaJit: " 1>&2 ; $TIME luajit collatz.lua
