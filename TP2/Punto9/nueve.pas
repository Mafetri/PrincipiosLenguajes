PROGRAM nueve;

VAR sum, num: integer;

BEGIN
	REPEAT
	write('Ingrese numero (0 para finalizar): ');
	read(num);
	sum := sum + num;
	writeln('Suma actual: ', sum);
	UNTIL num = 0;
END.

