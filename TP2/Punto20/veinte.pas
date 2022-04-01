PROGRAM veinte;

CONST
    tamMax = 10;
    tamMin = 0;

TYPE 
    indice = tamMin..tamMax;
    tipoMatriz = ARRAY[indice] OF ARRAY[indice] OF INTEGER;

VAR
    matriz:tipoMatriz;

FUNCTION traza(VAR matriz:tipoMatriz): INTEGER;
    VAR sum, i, j:integer;
    BEGIN
    sum := 0;
    FOR i := tamMin TO tamMax DO
        BEGIN
        sum := sum + matriz[i,i];
        END;
    traza := sum;
    END;

PROCEDURE imprimirMatriz(VAR matriz:tipoMatriz);
    VAR i, j:integer;
    BEGIN
    FOR i := tamMin TO tamMax DO
        BEGIN
        FOR j := tamMin TO tamMax DO
            BEGIN
            write(matriz[i,j], ' ');
            END;
        writeln('');
        END;
    END;

BEGIN
matriz[0, 0] := 2;
matriz[0, 2] := 2;
matriz[1, 1] := 2;
matriz[2, 2] := 2;
matriz[3, 3] := 2;
matriz[3, 4] := 2;
matriz[8, 8] := 5;
writeln('Matriz: ');
imprimirMatriz(matriz);
writeln('La traza de la matriz es: ', traza(matriz));
END.
