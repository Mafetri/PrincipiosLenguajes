PROGRAM cuatro;

VAR num:integer;

PROCEDURE mayor(num:integer);
	BEGIN
	IF num > 0
	THEN 
		writeln('El numero es mayor')
	ELSE IF num < 0
		THEN
			writeln('El numero es menor')
		ELSE
			writeln('El numero es cero');
	END;

BEGIN
	write('Ingrese numero: ');
	read(num);
	mayor(num);
END.
