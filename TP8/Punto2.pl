on(a, b).
on(b, c).
on(c, d).
on(d, e).

arriba(X, Y) :- on(X, Y).
arriba(X, Y) :- on(X, Z), arriba(Z, Y).