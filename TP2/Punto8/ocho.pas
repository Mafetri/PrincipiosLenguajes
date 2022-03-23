PROGRAM ocho;

VAR x, y: integer;

PROCEDURE intercambiar(VAR x,y:integer);
	VAR aux:integer;
	BEGIN
		aux := x;
		x := y;
		y := aux;
	END;

BEGIN
	x := 2;
	y := 3;
	writeln('Antes: ');
	writeln('x = ', x, ' e y = ', y);
	intercambiar(x,y);
	writeln('Despues: ');
	writeln('x = ', x, ' e y = ', y);
END.
