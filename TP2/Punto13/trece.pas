PROGRAM trece;

VAR i:integer;

FUNCTION celsius(x:integer): real;
	BEGIN
	celsius := 5/9 * (x-32);
	END;

BEGIN
i := 0;
REPEAT
	write(i,'F = ', celsius(i));
	writeln();
	i := i+10;
UNTIL i > 200;
END.
