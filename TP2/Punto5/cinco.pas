PROGRAM cinco;

VAR x,y :integer;

PROCEDURE divisible(x, y:integer);
	BEGIN
	IF x mod y = 0
	THEN
		writeln('El numero x es divisible por y')
	ELSE
		writeln('El numero x no es divisible por y');
	END;

BEGIN
	write('Ingrese x: ');
	read(x);
	write('Ingrese y: ');
	read(y);
	divisible(x,y);
END.
