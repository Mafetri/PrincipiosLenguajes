PROGRAM diez;

VAR x,y:integer;

FUNCTION multiplicar(x,y:integer): integer;
	VAR sum, i:integer;
	BEGIN
		sum := 0;
		FOR i := 0 TO (y-1) DO
		BEGIN
			sum := sum + x;
		END;	
	multiplicar := sum;
	END;

BEGIN
	write('Ingrese numero: ');
	read(x);
	write('Ingrese numero: ');
	read(y);
	writeln('El resultado es: ', multiplicar(x,y));
END.
