PROGRAM doce;

VAR num:integer;

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

FUNCTION siguientePrimo(x:integer): integer;
	BEGIN
	REPEAT
		x := x+1;
	UNTIL (esPrimo(x));
	siguientePrimo := x;
	END;

PROCEDURE descomponer(x:integer);
	VAR factor:integer; primerFactor:boolean;
	BEGIN
		factor := 2;
		primerFactor := true;
		REPEAT 
		BEGIN
			IF (x MOD factor = 0) THEN
				BEGIN
				IF (primerFactor) THEN
					BEGIN
					write(factor, ', ');
					primerFactor := false;
					END
				ELSE 
					BEGIN
					write(factor, ', ');
					END;
				x := (x DIV factor);
				END
			ELSE
				factor := siguientePrimo(factor);
		END;
		UNTIL(x <= 1);
	END;

BEGIN
	write('Ingrese numero: ');
	read(num);
	descomponer(num);
	writeln('');
END.

