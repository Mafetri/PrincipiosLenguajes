inclusion([], _).
inclusion([X|L1], L2) :- existe(X, L2), inclusion(L1, L2).
existe(_, []) :- false.
existe(X, [X|_]).
existe(X, [Y|L]) :- X \= Y, existe(X, L).

igualdad([], []).
igualdad([X|L1], [X|L2]) :- igualdad(L1, L2).

union([], L2, L2).
union([X|L1], L2, [X|R]) :- union(L1, L2, R).

interseccion([], L2, L2).
interseccion(L1, [], L1).
interseccion([X|L1], [X|L2], [X|R]) :- interseccion(L1, L2, R).
interseccion([X|L1], [Y|L2], R) :- X \= Y, interseccion(L1, L2, R).

diferencia([], L2, L2).
diferencia(L1, [], L1).
diferencia([X|L1], [X|L2], R) :- diferencia(L1,L2,R).
diferencia([X|L1], [Y|L2], [X,Y|R]) :- X \= Y, diferencia(L1,L2,R).