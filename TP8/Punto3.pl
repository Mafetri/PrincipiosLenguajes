suma(0, X, X).
suma(s(X), Y, s(Z)) :- suma(X, Y, Z).

resta(X, 0, X).
resta(s(X), s(Y), Z) :- resta(X, Y, Z).

multi(0, X, 0).
multi(s(X), Y, Z) :- multi(X, Y, A), suma(Y, A, Z).

dividir(_, 0, 0).
dividir(0, _ , 0).
dividir(X, s(0), X).
dividir(X, Y, s(W)) :- resta(X, Y, Z), dividir(Z, Y, W).

potencia(X, s(0), X).
potencia(X, s(Y), Z) :- potencia(X, Y, A), multi(X, A, Z).

% CB: Si el de la izquierda tiene elementos pero el de la izquierda no, entonces true.
grande_igual(s(_), 0).
grande_igual(X, Y) :- X == Y. 
% PR: se le resta 1 a ambos y se vuelve a llamar.
grande_igual(s(X), s(Y)) :- grande_igual(X, Y) | X == Y.