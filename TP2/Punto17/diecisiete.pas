PROGRAM diecisiete;

CONST tam = 200;
VAR primos:ARRAY[1..tam] OF integer;

FUNCTION esPrimo(x:integer): boolean;
	VAR tieneDivisores:boolean; i:integer;
	BEGIN
		tieneDivisores := false;

		IF x > 1 
		THEN BEGIN
			i := 2;
			WHILE ((i < x) AND (NOT tieneDivisores)) DO
			BEGIN
				IF (x MOD 2 = 0) THEN
					tieneDivisores := true;
				i := i + 1;
			END;
		END
		ELSE BEGIN
			tieneDivisores := true;
		END;
			
		esPrimo := NOT tieneDivisores;
	END;

PROCEDURE getPrimos(VAR primos:ARRAY OF INTEGER);
	VAR num, p:integer;
	BEGIN
		p := 0;
		FOR num := 0 TO 200 DO
			BEGIN
			IF esPrimo(num) THEN
				BEGIN
				primos[p] := num;
				p := p + 1;
				END;
			END;
	END;

PROCEDURE imprimirArreglo(arreglo:ARRAY OF INTEGER);
	VAR i:integer;
	BEGIN
	FOR i:= Low(arreglo) TO High(arreglo) DO
		write(arreglo[i], ' ');
	END;

BEGIN
getPrimos(primos);
imprimirArreglo(primos);
writeln('.');
END.
