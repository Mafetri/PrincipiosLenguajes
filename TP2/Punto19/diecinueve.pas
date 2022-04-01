PROGRAM diecinueve;

TYPE 
    Indice = 0..10;
    Arr = ARRAY [Indice] OF BOOLEAN;
    ArrEscalar = ARRAY[Indice] OF ARRAY[0..2] OF BOOLEAN;
VAR
    arrA, arrB, arrS:Arr;
    arrE:ArrEscalar;

PROCEDURE vectorSuma(arrA, arrB:Arr;VAR arrS:Arr);
    VAR i:integer;
    BEGIN
    FOR i:= Low(arrA) TO High(arrB) DO
        BEGIN
        arrS[i] := arrA[i] + arrB[i];
        END;
    END;

PROCEDURE escalar(arrA, arrB:Arr;VAR arrE:ArrEscalar);
    VAR i, j:integer; escalar:ARRAY[2] OF BOOLEAN;
    BEGIN
    FOR i := Low(arrA) TO High(arrA) DO
        BEGIN
        FOR j := Low(arrB) to High(arrB) DO
            BEGIN
            escalar[0] := arrA[i];
            escalar[1] := arrB[j];
            arrE[i] := escalar;
            END;
        END;
    END;

PROCEDURE imprimir(arr:ARRAY OF BOOLEAN);
	VAR i:integer;
	BEGIN
	FOR i := Low(arr) TO High(arr) DO
		write(arr[i], ', ');
	END;

PROCEDURE imprimirMatriz(arr:ArrEscalar);
    VAR i, j:integer;
    BEGIN
    FOR i := Low(arr) TO High(arr) DO 
        BEGIN
        write('[', imprimir(arr[i]), '], ');
        END;
    END;

BEGIN
writeln('Arreglo A:');
imprimir(arrA);
writeln('');
writeln('Arreglo B:');
imprimir(arrB);
writeln('');
writeln('Arreglo Suma: ');
vectorSuma(arrA, arrB, arrS);
imprimir(arrS);
writeln('');'
writeln('Arreglo Escalar: ');
escalar(arrA, arrB, arrE);
writeln('');
END.
