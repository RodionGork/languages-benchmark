-module(primes).
-export([start/0]).

divfound(P, I, A) ->
  D = array:get(I, P),
  if
    D * D > A -> false;
    A rem D == 0 -> true;
    true -> divfound(P, I+1, A)
  end.

primes(N, P, A) ->
  S = array:size(P),
  if
    N == S -> P;
    true -> case divfound(P, 0, A) of
      true -> primes(N, P, A+2);
      false -> primes(N, array:set(array:size(P), A, P), A+2)
    end
  end.

start() ->
  N = list_to_integer(os:getenv("MAXN")),
  io:format("primes[~b] = ~b~n", [N, array:get(N-1, primes(N, array:from_list([2, 3, 5, 7]), 9))]).
