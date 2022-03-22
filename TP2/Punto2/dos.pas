PROGRAM dos;

VAR a, b: integer;

FUNCTION suma(a:real;b:real): real;
	BEGIN
	suma := a + b;
	END;

FUNCTION resta(a:real;b:real): real;
	BEGIN
	resta := a - b;
	END;

PROCEDURE producto(a:real; b:real);
	BEGIN
	writeln('El producto es: ', a*b);
	END;

PROCEDURE division(a:real; b:real);
	BEGIN
	writeln('La division es: ', a/b);
	END;

BEGIN
write('Ingrese numero: ');
read(a);
write('Ingrese otro numero:');
read(b);
writeln('La suma es: ', suma(a,b));
writeln('La resta es: ', resta(a,b));
producto(a,b);
division(a,b);
END.

