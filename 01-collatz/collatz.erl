-module(collatz).
-export([start/0]).

collatz(N, R) ->
  if
    N == 1 -> R;
    N rem 2 > 0 -> collatz(3 * N + 1, R + 1);
    true -> collatz(N div 2, R + 1)
  end.

total(0, R) -> R;
total(N, R) -> total(N - 1, collatz(N, 0) + R).

start() ->
  N = list_to_integer(os:getenv("MAXN")),
  Res = total(N, 0),
  io:format("sum=~b, avg=~g\n", [Res, Res / N]).

