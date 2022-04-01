PROGRAM veintidos;

TYPE
    indice = 0..2;
    tipoArr = ARRAY[indice] OF STRING;

VAR
    nombres:tipoArr;
    i:integer;

PROCEDURE ordenarAlfa(VAR arr:tipoArr);
    VAR
        i,j:integer;
        temp:String;
    BEGIN
    FOR i := High(indice) DOWNTO 2 do
        BEGIN
        FOR j := 0 to i - 1 DO
            BEGIN
            IF arr[j] > arr[j + 1] THEN
                BEGIN
                temp := arr[j];
                arr[j] := arr[j + 1];
                arr[j + 1] := temp;
                END;
            END;
        END;
    END;

PROCEDURE imprimir(arr:tipoArr);
	VAR i:integer;
	BEGIN
	FOR i := Low(arr) TO High(arr) DO
		write(arr[i], ', ');
	END;

BEGIN
FOR i := Low(indice) TO High(indice) DO
    BEGIN
    write('Ingrese nombre ', i, ': ');
    readln(nombres[i]);
    END;

write('Nombres Ingresados: ');
imprimir(nombres);
writeln(' ');
ordenarAlfa(nombres);
write('Nombres Ordenados: ');
imprimir(nombres);
writeln(' ');
END.