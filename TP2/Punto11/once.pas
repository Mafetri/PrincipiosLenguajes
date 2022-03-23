PROGRAM once;

VAR x:real; n:integer;

FUNCTION expo(x:real;n:integer): real;
	VAR i:integer; res:real;
	BEGIN
		res := 1;
		FOR i:=1 TO n DO
			res := res * x;
		expo := res;
	END;

BEGIN
	write('Ingrese numero: ');
	read(x);
	write('Ingrese potencia: ');
	read(n);
	writeln('Resultado: ', expo(x,n));
END.
