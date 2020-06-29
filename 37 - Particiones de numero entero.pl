% Autor:
% Fecha: 02/12/2018

particion(N, _, []) :- N = 0.
particion(N, [], _) :- fail.

particion(N, [IH|IT], [OH|OT]) :-
  N =< 0, fail;
  N >= IH, M is N-IH, OH = IH,
  particion(M, [IH|IT], OT).
particion(N, [_|IT], Output) :-
  N =< 0, fail;
  particion(N, IT, Output).
  
%particion(4, [1, 2, 3], X).

