PROGRAM seis;

VAR x, y:integer; operador:char;

PROCEDURE calcular(x,y:integer; operador:char);
	BEGIN
	CASE operador OF
		'-' : writeln(x, '-', y,'=',x-y);
		'/' : writeln(x, '/', y,'=',x div y);
		'*' : writeln(x, '*', y,'=',x*y);
		'+' : writeln(x, '+', y,'=',x+y);
	ELSE
		writeln('Operacion desconocida');
	END;
	END;

BEGIN
	write('Ingrese x:');
	read(x);
	write('Ingrese y:');
	read(y);
	write('Ingrese operador:');
	readln(operador);
	writeln(operador);
	calcular(x,y,operador);
END.
