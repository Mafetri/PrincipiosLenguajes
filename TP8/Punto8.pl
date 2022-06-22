rotacionIzquierda([X|L], R) :- agregarAlFinal(X, L, R).
agregarAlFinal(X, [], [X]).
agregarAlFinal(X, [Z|L], [Z|R]) :- agregarAlFinal(X, L, R).

rotacionDerecha(L, R) :- obtenerFinal(L, X, L2), agregarAlPrincipio(X, L2, R).
obtenerFinal([X], X, []).
obtenerFinal([X|L], R, [X|L2]) :- obtenerFinal(L, R, L2).
agregarAlPrincipio(X, L, [X|L]).

eliminarOcurrencias([], _, []).
eliminarOcurrencias([X|L], X, R) :- eliminarOcurrencias(L, X, R).
eliminarOcurrencias([S|L], X, [S|R]) :- S \= X, eliminarOcurrencias(L, X, R).

reemplazar([], _, _, []).
reemplazar([X|L], X, Y, [Y|R]) :- reemplazar(L, X, Y, R).
reemplazar([X|L], Z, Y, [X|R]) :- X \= Z, reemplazar(L, Z, Y, R).

cardinalidad(L, R) :- contarNoRepetidos(L, _, R).
contarNoRepetidos([], _, 0).
contarNoRepetidos([X|L], L2, s(R)) :- noExiste(X, L2), contarNoRepetidos(L, [X|L2], R).
contarNoRepetidos([X|L], L2, R) :- not(noExiste(X, L2)), contarNoRepetidos(L, L2, R).
noExiste(_, []).
noExiste(X, [X|_]) :- false.
noExiste(X, [Y|L2]) :- X \= Y, noExiste(X, L2).

inversion(L, R) :- invertir(L,[],R).
invertir([],R,R).
invertir([X|L],Invertido, R) :- invertir(L,[X|Invertido],R).

palindromo(L, R) :- inversion(L, Z), concatenar(L, Z, R).
concatenar([],L,L).
concatenar([H|T],L,[H|Z]) :- concatenar(T,L,Z).

duplicar([X], [X, X]).
duplicar([X|L], [X,X|R]) :- duplicar(L, R).