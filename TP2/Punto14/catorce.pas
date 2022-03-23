PROGRAM catorce;

VAR telegrama:String[255]; palabras, i:integer;

BEGIN
write('Ingrese telegrama: ');
read(telegrama);
i := 0;
palabras := 1;
WHILE telegrama[i] <> '.' DO
	BEGIN
	IF telegrama[i] = ' ' THEN
		palabras := palabras + 1;
	i := i + 1;
	END;
writeln('Hubo ', i-1, ' letras y ', palabras, ' palabras');
END.
