%Punto1A
padre(Y, X) :- progenitor(X, Y), masculino(X).
madre(Y, X) :- progenitor(X, Y), femenino(X).

hermano(Y, X) :- padre(Y, P), madre(Y, M), padre(X, P), madre(X, M), X \= Y.

abuelo(Y, X) :- padre(Y, P), padre(P, X).
bisabuelo(Y, X) :- padre(Y, P), abuelo(P, X).

tio(Y, X) :- padre(Y, P), hermano(P, X).
primo(Y, X) :- tio(Y, T), progenitor(T, X).

soltero(X) :- not(casado(Y, X)), not(casado(X, Y)).

amante(Y, X) :- (casado(Y, P); casado(P, Y)), (casado(Y, X); casado(X, Y)), P \= X.

suegro(Y, X) :- (casado(Y, P); casado(P, Y)), padre(P, X).
suegra(Y, X) :- (casado(Y, P); casado(P, Y)), madre(P, X).

madre(X, laura) = luciano y ariel
abuelo(tomas, Y) = no
ancestro(X,luciano).
ancestro(jorge,Y).
soltero(luis) = true
soltero(jose) = true
amante(X,Y) = lo hice pensando en buscar el amante de X

%Punto1B