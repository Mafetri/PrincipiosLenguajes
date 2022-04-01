PROGRAM dieciocho;

CONST tamMax = 10;

TYPE 
 TipoIndiceConjuntos = 1..tamMax;
 Conj = ARRAY[TipoIndiceConjuntos] OF BOOLEAN;
 ConjDoble = ARRAY[1..tamMax*2] OF BOOLEAN;

VAR 
 ConjA, ConjB:Conj;
 ConjU:ConjDoble;
 ConjI:Conj;
 ConjD:Conj;
 
FUNCTION union(ConjA, ConjB:Conj):ConjDoble;
	VAR i, j:integer;
	BEGIN
	FOR i := Low(ConjA) TO High(ConjA) DO
		BEGIN
		ConjU[i] := ConjA[i];
		END;
	FOR j := Low(ConjB) TO High(ConjB) DO
		BEGIN
		ConjU[i] := ConjB[j];
		i := i + 1;
		END;	
	union := ConjU;
	END;

FUNCTION interseccion(ConjA, ConjB:Conj): Conj;
	VAR i, j:integer; existe:boolean;
	BEGIN
	FOR i := Low(ConjA) TO High(ConjA) DO
		BEGIN
		existe := false;
		FOR j := Low(ConjB) TO High(ConjB) DO
			BEGIN
			IF ConjA[i] = ConjB[j] THEN
				BEGIN
				existe := true;
				END;
			END;

		IF existe THEN
			BEGIN
			ConjI[i] := ConjA[i];
			END;
		END;
	interseccion := ConjI;
	END;

FUNCTION diferencia(ConjA, ConjB:Conj):Conj;
	VAR i, j:integer; existe:boolean;
	BEGIN
	FOR i := Low(ConjA) TO High(ConjA) DO
		BEGIN
		existe := false;
		FOR j := Low(ConjB) TO High(ConjB) DO
			BEGIN
			IF ConjA[i] = ConjB[j] THEN
				BEGIN
				existe := true;
				END;
			END;

		IF (NOT existe) THEN
			BEGIN
			ConjD[i] := ConjA[i];
			END;
		END;
	diferencia := ConjD;
	END;
	
PROCEDURE imprimir(arr:ARRAY OF BOOLEAN);
	VAR i:integer;
	BEGIN
	FOR i := Low(arr) TO High(arr) DO
		write(arr[i], ', ');
	END;

BEGIN
writeln('Conjunto A: ');
imprimir(ConjA);
writeln('');
writeln('Conjunto B: ');
imprimir(ConjB);
writeln('');
writeln('Union: ');
imprimir(union(ConjA, ConjB));
writeln('');
writeln('Interseccion: ');
imprimir(interseccion(ConjA, ConjB));
writeln('');
writeln('Diferencia: ');
imprimir(diferencia(ConjA, ConjB));
writeln('');
END.
