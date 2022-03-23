PROGRAM siete;

VAR num:integer;

PROCEDURE siguientes(num:integer);
	VAR i:integer;
	BEGIN
		FOR i := num TO num+20 DO
			write(', ', i);
	END;

BEGIN
	write('Ingrese primer numero: ');
	read(num);
	siguientes(num);
END.
