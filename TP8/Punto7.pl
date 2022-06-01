concatenar([],L,L).
concatenar([H|T],L,[H|Z]) :- concatenar(T,L,Z).

pertenece(X, [X|_]).
pertenece(X, [_|L]) :- pertenece(X, L).

apariciones(X, [Y|[]], 0) :- X \= Y.
apariciones(X, [X|T], s(Z)) :- apariciones(X, T, Z).
apariciones(X, [Y|T], Z) :- X \= Y, apariciones(X, T, Z).

quitar(_, [],[]).
quitar(X, [X|L], L).
quitar(X, [Y|L], [Y|Z]) :- X \= Y, quitar(X,L,Z).

sustituir(_, [],[]).
sustituir(X, Y, [X|L], [Y|L]).
sustituir(X, Y,[H|L], [H|Z]) :- X \= Y, sustituir(X,Y,L,Z).

longitud([], 0).
longitud([_|L], s(Z)) :- longitud(L, Z).