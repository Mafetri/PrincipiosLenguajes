PROGRAM tres;

VAR r:integer;

FUNCTION superficie(r:integer): real;
	BEGIN
	superficie := (4 * pi * sqr(r));
	END;

FUNCTION volumen(r:integer): real;
	BEGIN
	volumen := (4/3) * pi * sqr(r) * r;
	END;

PROCEDURE calcular(r:integer);
	BEGIN
	writeln('La superficie es: ', superficie(r));
	writeln('El volumen es: ', volumen(r));
	END;

BEGIN
	write('Ingrese radio de la esfera: ');
	read(r);
	writeln('r: ', r);
	calcular(r);
END.
